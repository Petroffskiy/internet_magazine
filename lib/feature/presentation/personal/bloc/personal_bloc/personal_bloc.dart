import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/domain/model/personal/primary_update_password_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_personal_repository.dart';

part 'personal_event.dart';
part 'personal_state.dart';

class PersonalBloc extends Bloc<PersonalEvent, PersonalState> {
  final IPersonalRepositoryDomain _iPersonalRepositoryDomain;
  PersonalBloc(this._iPersonalRepositoryDomain) : super(PersonalInitial()) {
    on<GetUserData>(
      (event, emit) async {
        final Box<UserModelDomain> userBox = await Hive.openBox("User");
        final UserModelDomain? user = userBox.get("user_data");
        emit(PersonalLoading());

        if (user != null) {
          emit(PersonalDownload(userData: user));
          userBox.close();
        } else {
          userBox.close();
          emit(const PersonalError(message: errorMessageBloc));
        }
      },
    );
    on<UpdatePassword>(
      (event, emit) async {
        final PrimaryUpdatePasswordDomain response =
            await _iPersonalRepositoryDomain.updatePassword(
                password: event.password);
        response.maybeWhen(
          success: (success) {
            deleteFromDist();
            emit(PersonalComplete());
          },
          error: (error) {
            emit(PersonalError(message: "${error.message} код: ${error.code}"));
          },
          orElse: () {
            emit(const PersonalError(message: errorMessageBloc));
          },
        );
      },
    );
  }
}

Future<void> deleteFromDist() async {
  await Hive.deleteFromDisk();
  // print("Complete");
}
