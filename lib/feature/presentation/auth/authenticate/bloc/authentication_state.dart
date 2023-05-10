part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationLoading extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationError extends AuthenticationState {
  final String message;

  const AuthenticationError({
    required this.message,
  });

  @override
  List<Object> get props => [
        message,
      ];
}

class AuthenticationDownload extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationSuccess extends AuthenticationState {
  @override
  List<Object> get props => [];
}
