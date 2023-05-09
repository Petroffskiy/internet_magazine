import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_visible_state.dart';

class PasswordVisibleBloc extends Bloc<PasswordVisibleEvent, bool> {
  PasswordVisibleBloc() : super(false) {
    on<PasswordTrue>(((event, emit) => emit(true)));
    on<PasswordFalse>(((event, emit) => emit(false)));
  }
}
