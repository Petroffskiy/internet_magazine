import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/core/role/user_role.dart';
import 'package:internet_magazine/feature/domain/model/user_data/primary_user_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_authentication_repository.dart';
import 'dart:developer' as dev;

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final IAuthRepositoryDomain _iAuthRepositoryDomain;
  AuthorizationBloc(this._iAuthRepositoryDomain)
      : super(AuthorizationInitial()) {
    on<GetAuthorization>(
      (event, emit) async {
        emit(AuthorizationLoading());
        final PrimaryUserModelDomain userModel =
            await _iAuthRepositoryDomain.authorization(
          email: event.email,
          password: event.password,
          name: event.name,
        );
        final Box<UserModelDomain> userBox =
            await Hive.openBox<UserModelDomain>("User");
        userModel.maybeWhen(
          success: (success) {
            UserModelDomain user = success;
            userBox.put('user_data', user);
            final UserRole role = UserRole.setRole(user.role);
            userBox.flush();
            emit(AuthorizationDownload(role: role));
          },
          error: (error) {
            userBox.flush();
            emit(
              AuthorizationError(message: "${error.message} код:${error.code}"),
            );
          },
          orElse: () {
            userBox.flush();
            emit(
              const AuthorizationError(
                message: "$errorMessageBloc код: $errorBloc",
              ),
            );
          },
        );
      },
    );
  }
}
