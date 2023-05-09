part of 'authorization_bloc.dart';


abstract class AuthorizationState extends Equatable {
  const AuthorizationState();
}
class AuthorizationInitial extends AuthorizationState {
  @override
  List<Object> get props => [];
}

class AuthorizationLoading extends AuthorizationState {
  @override
  List<Object> get props => [];
}

class AuthorizationError extends AuthorizationState {
  final String message;

  const AuthorizationError({
    required this.message,
  });

  @override
  List<Object> get props => [
        message,
      ];
}

class AuthorizationDownload extends AuthorizationState {
  @override
  List<Object> get props => [];
}