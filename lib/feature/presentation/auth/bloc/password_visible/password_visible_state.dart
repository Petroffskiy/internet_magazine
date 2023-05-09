part of 'password_visible_bloc.dart';

abstract class PasswordVisibleEvent {}

class PasswordFalse extends PasswordVisibleEvent {}

class PasswordTrue extends PasswordVisibleEvent {}
