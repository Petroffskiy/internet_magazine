import 'package:internet_magazine/feature/data/api/model/gadgets/primary_gadgets_model.dart';
import 'package:internet_magazine/feature/data/api/service/connection_service.dart';
import 'package:internet_magazine/feature/data/mapper/gadgets/list_gadgets_mapper.dart';
import 'package:internet_magazine/feature/data/mapper/user/user_mapper.dart';
import 'package:internet_magazine/feature/domain/model/gadgets/list_gadgets/primary_gadgets_model_domain.dart';

import '../../domain/model/user_data/primary_user_model_domain.dart';

class ApiUtil {
  final ConnectionService _connectionService;

  ApiUtil(this._connectionService);

  Future<PrimaryUserModelDomain> getData({
    required String email,
    required String password,
  }) async {
    final result =
        await _connectionService.getData(email: email, password: password);
    return UserMapper.fromJson(result);
  }

  Future<PrimaryUserModelDomain> authorization({
    required String email,
    required String password,
    required String name,
  }) async {
    final result = await _connectionService.getAuthorization(
        name: name, password: password, email: email);
    return UserMapper.fromJson(result);
  }

  Future<bool> checkUser(
      {required String email, required String password}) async {
    final result =
        await _connectionService.checkUser(email: email, password: password);
    return result;
  }

  Future<PrimaryGadgetsModelDomain> getGadgets() async {
    final result = await _connectionService.getGadgets();
    return GadgetsModelMapper.fromJson(result);
  }
}
