import 'package:bloc/bloc.dart';

part 'validate_state.dart';

class ValidateBloc extends Bloc<ValidateEvent, bool> {
  ValidateBloc() : super(true) {
    on<ValidateTrue>((event, emit) => emit(true));
    on<ValidateFalse>((event, emit) => emit(false));
  }
}
