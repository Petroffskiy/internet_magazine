part of 'personal_bloc.dart';


abstract class PersonalEvent extends Equatable {
  const PersonalEvent();
  @override
  List<Object> get props => [];
}

class GetUserData extends PersonalEvent {
  @override
  List<Object> get props => [];
}

class UpdatePassword extends PersonalEvent {
  final String password;

  const UpdatePassword({required this.password});

  @override
  List<Object> get props => [
        password,
      ];
}