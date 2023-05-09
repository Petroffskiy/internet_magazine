// import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/endpoints/constance.dart';
import 'package:internet_magazine/feature/data/api/model/user/user_model.dart';
import 'package:internet_magazine/feature/data/api/request/authorization_body.dart';

import '../model/error/error_model.dart';
import '../model/user/primary_user_model.dart';
// import 'dio/dio_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'dart:developer' as dev;

class ConnectionService {
  // final Dio _dio = buildDioClient();

  Future<PrimaryUserModel> getData({
    required String email,
    required String password,
  }) async {
    await Firebase.initializeApp();
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseDatabase _database = FirebaseDatabase.instance;

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
    final auth = FirebaseAuth.instance;

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
            role: false,
          ),
        );
      } else {
        return const PrimaryUserModel.error(
            ErrorModel(code: 404, message: errorAuthorizationUser));
      }
      // return const PrimaryUserModel.success(UserModel(
      //   id: "2322323",
      //   login: 'login@mail.ru',
      //   name: 'name',
      //   password: 'password',
      //   role: false,
      // ));
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
}
