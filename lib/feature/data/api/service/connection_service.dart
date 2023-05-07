// import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:internet_magazine/feature/data/api/model/user/user_model.dart';

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
    print("start service connection");
    await Firebase.initializeApp();
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseDatabase _database = FirebaseDatabase.instance;

    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
      String uid = userCredential.user!.uid;
      if (uid.isNotEmpty) {
        print("success");
        return const PrimaryUserModel.success(
          UserModel(
            id: 0,
            name: 'test',
            login: 'admin@mail.ru',
            password: '123456',
            role: true,
          ),
        );
      } else {
        print('error');
        return const PrimaryUserModel.error(
          ErrorModel(
            message: 'test uid',
            code: 418,
          ),
        );
      }
    // } else {
    //   return const PrimaryUserModel.error(
    //     ErrorModel(
    //       message: 'test else',
    //       code: 404,
    //     ),
    //   );
    // }
  }
}
