import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'app_bar_event.dart';
part 'app_bar_state.dart';

class AppBarBloc extends Bloc<AppBarEvent, AppBarState> {
  AppBarBloc() : super(AppBarInitial()) {
    on<ExitAccount>(
      (event, emit) async {
        emit(AppBarInitial());
        await Hive.deleteFromDisk();
        emit(AppBarDownloaded());
      },
    );
  }
}
