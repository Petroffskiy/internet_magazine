// import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/endpoints/constance.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/gadgets/gadgets_model.dart';
import 'package:internet_magazine/feature/data/api/model/gadgets/primary_gadgets_model.dart';
import 'package:internet_magazine/feature/data/api/model/personal/primary_update_password.dart';
import 'package:internet_magazine/feature/data/api/model/user/primary_user_model.dart';
import 'package:internet_magazine/feature/data/api/model/user/user_model.dart';
import 'package:internet_magazine/feature/data/api/request/authorization_body.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'dart:developer' as dev;

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
        ErrorModel error = const ErrorModel(
          code: 418,
          message: "Шеф, всё пропало",
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
}
