import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:internet_magazine/core/firebase_options.dart';

import 'package:internet_magazine/core/role/user_role.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

import "dart:developer" as dev;

part 'bottom_event.dart';
part 'bottom_state.dart';

class BottomBloc extends Bloc<BottomEvent, BottomState>
    with WidgetsBindingObserver {
  BottomBloc() : super(const BottomInitial(role: UserRole.user)) {
    WidgetsBinding.instance.addObserver(this);
    on<BottomData>((event, emit) async {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      emit(const BottomInitial(role: UserRole.user));
      final Box<UserModelDomain> userBox =
          await Hive.openBox<UserModelDomain>("User");
      final UserModelDomain? user = userBox.get("user_data");
      print(user?.role);
      if (user != null) {
        final UserRole role = UserRole.setRole(user.role);
        emit(BottomDownload(role: role));
      } else {
        final UserRole role = UserRole.setRole("user");
        emit(BottomDownload(role: role));
      }
    });
  }
  @override
  Future<void> didChangeAppLifecycleState(
    AppLifecycleState appLifecycleState,
  ) async {
    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
      dev.log(name: "bloc buttom", "resume");
    }

    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.paused) {
      dev.log(name: "bloc buttom", "pauserd");
    }
  }
}
