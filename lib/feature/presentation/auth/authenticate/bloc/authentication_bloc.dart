import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/user_data/primary_user_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

import '../../../../domain/repository/i_authentication_repository.dart';

import 'dart:developer' as dev;

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthRepositoryDomain _iAuthRepositoryDomain;

  AuthenticationBloc(this._iAuthRepositoryDomain)
      : super(AuthenticationInitial()) {
    on<GetAuthentication>(
      (event, emit) async {
        emit(AuthenticationLoading());
        final PrimaryUserModelDomain userModel =
            await _iAuthRepositoryDomain.authentication(
          email: event.email,
          password: event.password,
        );
        final Box<UserModelDomain> userBox =
            await Hive.openBox<UserModelDomain>("User");
        userModel.maybeWhen(
          success: (success) {
            UserModelDomain user = success;
            dev.log(
                name: "authentication bloc",
                "${user.name} ${user.role} ${user.login} ${user.id}");
            userBox.put('user_data', user);
            dev.log(name: "bloc hive", "${userBox.get("user_data")?.name}");
            dev.log(name: "bloc hive", "${userBox.length}");

            emit(AuthenticationDownload());
          },
          error: (error) {
            emit(
              AuthenticationError(
                  message: "${error.message} код:${error.code}"),
            );
          },
          orElse: () {
            emit(
              const AuthenticationError(
                message: "$errorMessageBloc код: 418",
              ),
            );
          },
        );
      },
    );
  }
}
