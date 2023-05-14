import 'package:bloc/bloc.dart';

part 'visible_event.dart';

class VisibleBloc extends Bloc<VisibleEvent, bool> {
  VisibleBloc() : super(false) {
    on<Visible>(((event, emit) => emit(true)));
    on<Invisible>(((event, emit) => emit(false)));
  }
}
