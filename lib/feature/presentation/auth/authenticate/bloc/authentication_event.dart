part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class GetAuthentication extends AuthenticationEvent {
  final String email;
  final String password;

  const GetAuthentication({required this.password, required this.email,});

  @override
  List<Object> get props => [
    email,
    password,
  ];
}
