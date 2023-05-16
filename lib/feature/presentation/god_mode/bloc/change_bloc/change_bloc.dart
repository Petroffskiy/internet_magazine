import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_event.dart';
part 'change_state.dart';

class ChangeBloc extends Bloc<ChangeEvent, ChangeState> {
  ChangeBloc() : super(ChangeCreate()) {
    on<GetChange>(
      (event, emit) {
        emit(Change());
      },
    );
    on<GetCreate>(
      (event, emit) {
        emit(ChangeCreate());
      },
    );
  }
}
