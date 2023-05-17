import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:developer' as dev;
part 'list_view_check_event.dart';
part 'list_view_check_state.dart';

class ListViewCheckBloc extends Bloc<ListViewCheckEvent, ListViewCheckState> {
  ListViewCheckBloc() : super(ListInitial()) {
    List<bool> checkboxes = [];
    dev.log(name: "list bloc", "start");
    on<SelectAllEvent>(
      (event, emit) {
        dev.log(name: "list bloc", "length: ${event.lengthList}");

        checkboxes = List.filled(event.lengthList, false);
        emit(ListLoaded(checkboxes));
      },
    );
    on<ToggleCheckboxEvent>(
      (event, emit) {
        dev.log(name: "list bloc", "length: ${event.index}");

        checkboxes[event.index] = !checkboxes[event.index];
        emit(ListLoaded(checkboxes));
      },
    );
  }
}
