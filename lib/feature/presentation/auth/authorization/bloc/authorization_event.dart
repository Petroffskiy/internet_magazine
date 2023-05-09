part of 'authorization_bloc.dart';

abstract class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();
}

class GetAuthorization extends AuthorizationEvent {
  final String email;
  final String password;
  final String name;

  const GetAuthorization({
    required this.email,
    required this.name,
    required this.password,
  });

  @override
  List<Object> get props => [
    email, password, name,
  ];
}
