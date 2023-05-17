// import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/endpoints/constance.dart';
import 'package:internet_magazine/feature/data/api/model/busket/primary_busket_model.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/god/product/primary_god_gadgets_model.dart';
import 'package:internet_magazine/feature/data/api/model/god/product/primary_god_products_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/gadgets/gadgets_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/gadgets/primary_gadgets_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/products/primary_product_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/products/product_model.dart';
import 'package:internet_magazine/feature/data/api/model/personal/primary_update_password.dart';
import 'package:internet_magazine/feature/data/api/model/user/primary_user_model.dart';
import 'package:internet_magazine/feature/data/api/model/user/user_model.dart';
import 'package:internet_magazine/feature/data/api/request/auth/authorization_body.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'dart:developer' as dev;

import 'package:internet_magazine/feature/data/api/request/save_product/save_product_body.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_products_model_domain.dart';

class ConnectionService {
  Future<PrimaryUserModel> getData({
    required String email,
    required String password,
  }) async {
    await Firebase.initializeApp();
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseDatabase _database = FirebaseDatabase.instance;
    dev.log(name: "service check", "password: $password, email: $email");
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        dev.log(
            name: "connection service",
            "check user: ${_auth.currentUser?.uid}");
        const String endpointUser = Constance.USER;

        final DatabaseEvent dataResponse =
            await _database.ref().child(endpointUser).once();

        if (dataResponse.snapshot != null) {
          final test = jsonDecode(jsonEncode(dataResponse.snapshot.value));

          UserModel userResponse = UserModel.fromJson(test[user.uid]);
          return PrimaryUserModel.success(userResponse);
        } else {
          ErrorModel error = const ErrorModel(
            code: errorCodeMapper,
            message: errorMessage404,
          );
          return PrimaryUserModel.error(error);
        }
      } else {
        ErrorModel error =
            const ErrorModel(code: errorCodeMapper, message: errorMessage404);
        return PrimaryUserModel.error(error);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        ErrorModel error = const ErrorModel(
          code: errorWrongEmail,
          message: errorInvalidEmail,
        );
        return PrimaryUserModel.error(error);
      } else if (e.code == 'user-not-found') {
        ErrorModel error = const ErrorModel(
          code: errorWrongEmail,
          message: errorUserNotFount,
        );
        return PrimaryUserModel.error(error);
      } else if (e.code == 'wrong-password') {
        ErrorModel error = const ErrorModel(
          code: errorForrbiden,
          message: errorWrongPassword,
        );
        return PrimaryUserModel.error(error);
      } else {
        ErrorModel error = ErrorModel(message: e.code, code: errorCodeMapper);
        return PrimaryUserModel.error(error);
      }
    }
  }

  Future<PrimaryUserModel> getAuthorization({
    required String name,
    required String password,
    required String email,
  }) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        const String endpoit = Constance.USER;
        String uid = userCredential.user!.uid;
        Map<String, dynamic> user = AuthorizationBody(
                id: uid, login: email, name: name, password: password)
            .toJson();

        DatabaseReference userRef =
            FirebaseDatabase.instance.ref().child(endpoit).child(uid);
        await userRef.set(user);
        return PrimaryUserModel.success(
          UserModel(
            id: uid,
            name: name,
            login: email,
            password: password,
            role: "user",
          ),
        );
      } else {
        return const PrimaryUserModel.error(
            ErrorModel(code: 404, message: errorAuthorizationUser));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ErrorModel error = const ErrorModel(
          code: errorWrongEmail,
          message: errorInvalidEmail,
        );
        return PrimaryUserModel.error(error);
      } else if (e.code == 'email-already-in-use') {
        ErrorModel error = const ErrorModel(
          code: errorWrongEmail,
          message: errorInvalidEmail,
        );
        return PrimaryUserModel.error(error);
      } else {
        ErrorModel error = const ErrorModel(
          code: errorWrongEmail,
          message: errorInvalidEmail,
        );
        return PrimaryUserModel.error(error);
      }
    } catch (e) {
      ErrorModel error = const ErrorModel(
        code: errorWrongEmail,
        message: errorInvalidEmail,
      );
      return PrimaryUserModel.error(error);
    }
  }

  Future<bool> checkUser({
    required String email,
    required String password,
  }) async {
    await Firebase.initializeApp();
    dev.log(name: "service check", "start function");
    dev.log(name: "service check", "password: $password, email: $email");

    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      dev.log(name: "service check", user.toString());
      if (user != null) {
        if (user.uid != null) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<PrimaryGadgetsModel> getGadgets() async {
    const String endpoint = Constance.GADGETS;
    final _database =
        await FirebaseDatabase.instance.ref().child(endpoint).once();
    if (FirebaseAuth.instance.currentUser != null) {
      try {
        if (_database.snapshot.value != null) {
          final List<dynamic> valueMap =
              jsonDecode(jsonEncode(_database.snapshot.value));
          dev.log(name: "sercive gadgets", "$valueMap");
          final List<GadgetsModel> listGadgets = List.generate(valueMap.length,
              (index) => GadgetsModel.fromJson(valueMap[index]));
          return PrimaryGadgetsModel.success(listGadgets);
        } else {
          ErrorModel error = const ErrorModel(
            code: 418,
            message: "Шеф, всё пропало",
          );
          return PrimaryGadgetsModel.error(error);
        }
      } catch (e) {
        ErrorModel error = ErrorModel(
          code: 418,
          message: e.toString(),
        );
        return PrimaryGadgetsModel.error(error);
      }
    } else {
      return const PrimaryGadgetsModel.error(ErrorModel(
          code: 418, message: "Каким-то образом пользователь не авторизован"));
    }
  }

  Future<PrimaryUpdatePassword> getUpdate({required String password}) async {
    await Firebase.initializeApp();
    const String endpoint = Constance.USER;
    final User? _user = FirebaseAuth.instance.currentUser;
    if (_user != null) {
      final _database =
          FirebaseDatabase.instance.ref().child(endpoint).child(_user.uid);

      dev.log("password: $password");
      try {
        await _user.updatePassword(password);
        _database.update({"password": password});
        return PrimaryUpdatePassword.success(password);
      } catch (e) {
        final ErrorModel error =
            ErrorModel(message: e.toString(), code: errorBloc);
        return PrimaryUpdatePassword.error(error);
      }
    } else {
      const ErrorModel error = ErrorModel(message: "Пустой юзер", code: 404);
      return const PrimaryUpdatePassword.error(error);
    }
  }

  Future<PrimaryProductModel> getProducts(
      {required List<String> finder}) async {
    const String endpoint = Constance.PRIMARY;
    await Firebase.initializeApp();
    final _database = FirebaseDatabase.instance.ref().child(endpoint);
    final List<DatabaseReference> endpoints = List.generate(
      finder.length,
      (index) => _database.child(
        finder[index],
      ),
    );
    List<ProductModel> result = [];
    for (int i = 0; i < endpoints.length; i++) {
      try {
        final values = await endpoints[i].once();
        dev.log(
            name: "service getProduct",
            "endpoint: ${endpoints[i].key.toString()} && ${_database.path}");
        if (values.snapshot.value != null) {
          final List<dynamic> valueList =
              values.snapshot.value as List<dynamic>;
          final List<Map<String, dynamic>> valueMapList = valueList
              .map((value) => Map<String, dynamic>.from(value))
              .toList();
          dev.log(
              name: "service getProduct", "in lsts index $i, $valueMapList");
          result.addAll(List.generate(valueMapList.length,
              (index) => ProductModel.fromJson(valueMapList[index])));
        } else {
          ErrorModel error = ErrorModel(
            code: 418,
            message: "Шеф, всё пропало ${values.snapshot.value.toString()}",
          );
          return PrimaryProductModel.error(error);
        }
      } catch (e) {
        ErrorModel error = ErrorModel(message: e.toString(), code: 418);
        return PrimaryProductModel.error(error);
      }
    }
    return PrimaryProductModel.success(result);
  }

  Future<bool> saveProduct({required SaveProductBody product}) async {
    const String endpoint = Constance.SAVEBUSKET;
    await Firebase.initializeApp();
    try {
      dev.log(name: "service save product", "save start");
      final _database = FirebaseDatabase.instance.ref().child(endpoint);
      final User? _user = FirebaseAuth.instance.currentUser;
      if (_user != null) {
        final DatabaseReference key = _database.child(_user.uid).push();
        key.set(product.toJson());
        dev.log(
            name: "service save product", "save complete: ${_database.key}");
        return true;
      } else {
        dev.log(name: "service save product", "save error");
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<PrimaryBusketModel> getBusketData() async {
    const String endpoint = Constance.SAVEBUSKET;
    await Firebase.initializeApp();
    try {
      dev.log(name: "service busket data", "busket data start");
      final _database = FirebaseDatabase.instance.ref().child(endpoint);
      final User? _user = FirebaseAuth.instance.currentUser;
      if (_user != null) {
        final dynamic data = await _database.child(_user.uid).once();

        if (data.snapshot.value != null) {
          final List<SaveProductBody> result = [];
          dev.log(name: "service busket", "befor forEach");

          data.snapshot.value.forEach((key, value) {
            dev.log(name: "service busket", "befor if in forEach");
            dev.log(name: "service busket", "value: ${value['name']}");

            // if (value is Map<String, dynamic>) {
            dev.log(name: "service busket", "key: $key, value: $value");
            final SaveProductBody product =
                SaveProductBody.fromJson(value, key);
            result.add(product);
            // }
          });
          return PrimaryBusketModel.success(result);
        } else {
          const ErrorModel error = ErrorModel(
            message: "snapshot null",
            code: 418,
          );
          return const PrimaryBusketModel.error(error);
        }
      } else {
        const ErrorModel error = ErrorModel(
          message: "User null",
          code: 418,
        );
        return const PrimaryBusketModel.error(error);
      }
    } catch (e) {
      final ErrorModel error = ErrorModel(
        message: e.toString(),
        code: 418,
      );
      return PrimaryBusketModel.error(error);
    }
  }

  Future<PrimaryGodProductsModel> getGodProduct() async {
    const String endpoint = Constance.GADGETS;
    final _database =
        await FirebaseDatabase.instance.ref().child(endpoint).once();
    if (FirebaseAuth.instance.currentUser != null) {
      try {
        if (_database.snapshot.value != null) {
          final List<dynamic> valueMap =
              jsonDecode(jsonEncode(_database.snapshot.value));
          final List<String> listGadgets =
              List.generate(valueMap.length, (index) => valueMap[index]['id']);
          final PrimaryProductModel result =
              await getProducts(finder: listGadgets);
          return result.maybeWhen(
            success: (success) {
              return PrimaryGodProductsModel.success(success);
            },
            error: (error) {
              return PrimaryGodProductsModel.error(error);
            },
            orElse: () {
              const ErrorModel errorFunct =
                  ErrorModel(message: "Ошибка от запроса", code: 404);
              return const PrimaryGodProductsModel.error(errorFunct);
            },
          );
        } else {
          ErrorModel error = const ErrorModel(
            code: 418,
            message: "Шеф, всё пропало",
          );
          return PrimaryGodProductsModel.error(error);
        }
      } catch (e) {
        ErrorModel error = ErrorModel(
          code: 418,
          message: e.toString(),
        );
        return PrimaryGodProductsModel.error(error);
      }
    } else {
      const ErrorModel error = ErrorModel(
          code: 418, message: "Каким-то образом пользователь не авторизован");
      return const PrimaryGodProductsModel.error(error);
    }
  }

  Future<PrimaryGodGadgetsModel> getGodGadgets() async {
    const String endpoint = Constance.GADGETS;
    final _database =
        await FirebaseDatabase.instance.ref().child(endpoint).once();
    if (FirebaseAuth.instance.currentUser != null) {
      try {
        if (_database.snapshot.value != null) {
          final List<dynamic> valueMap =
              jsonDecode(jsonEncode(_database.snapshot.value));
          dev.log(name: "sercive gadgets", "$valueMap");
          final List<GadgetsModel> listGadgets = List.generate(valueMap.length,
              (index) => GadgetsModel.fromJson(valueMap[index]));
          return PrimaryGodGadgetsModel.success(listGadgets);
        } else {
          ErrorModel error = const ErrorModel(
            code: 418,
            message: "Шеф, всё пропало",
          );
          return PrimaryGodGadgetsModel.error(error);
        }
      } catch (e) {
        ErrorModel error = ErrorModel(
          code: 418,
          message: e.toString(),
        );
        return PrimaryGodGadgetsModel.error(error);
      }
    } else {
      return const PrimaryGodGadgetsModel.error(ErrorModel(
          code: 418, message: "Каким-то образом пользователь не авторизован"));
    }
  }
}
