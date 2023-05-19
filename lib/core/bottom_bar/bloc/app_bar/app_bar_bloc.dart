import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

part 'app_bar_event.dart';
part 'app_bar_state.dart';

class AppBarBloc extends Bloc<AppBarEvent, AppBarState> {
  AppBarBloc() : super(AppBarInitial()) {
    on<ExitAccount>(
      (event, emit) async {
        emit(AppBarInitial());
        final Box<UserModelDomain> userBox = await Hive.openBox("User");
        final Box<SaveProductModelDomain> busketBox =
            await Hive.openBox("Busket");
        print("boxses: ${userBox.length}, ${busketBox.length}");

        userBox.clear();
        busketBox.clear();
        emit(AppBarDownloaded());
      },
    );
  }
}
