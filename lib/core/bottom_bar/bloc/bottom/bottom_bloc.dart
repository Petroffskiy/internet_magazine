import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:internet_magazine/core/role/user_role.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

part 'bottom_event.dart';
part 'bottom_state.dart';

class BottomBloc extends Bloc<BottomEvent, BottomState> {
  BottomBloc() : super(BottomInitial()) {
    on<BottomData>((event, emit) async {
      final Box<UserModelDomain> userBox =
          await Hive.openBox<UserModelDomain>("User");
      final UserModelDomain? user = userBox.get("user_data");
      if (user != null) {
        final UserRole role = UserRole.setRole(user.role);
        emit(BottomDownload(role: role));
      } else {
        final UserRole role = UserRole.setRole("user");
        emit(BottomDownload(role: role));
      }
    });
  }
}
