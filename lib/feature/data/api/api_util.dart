import 'package:internet_magazine/feature/data/api/service/connection_service.dart';
import 'package:internet_magazine/feature/data/mapper/user/user_mapper.dart';

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
}
