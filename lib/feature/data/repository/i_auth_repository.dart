import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/domain/model/user_data/primary_user_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_authentication_repository.dart';

class IAuthRepository extends IAuthRepositoryDomain {
  final ApiUtil _apiUtil;

  IAuthRepository(this._apiUtil);

  @override
  Future<PrimaryUserModelDomain> authentication(
      {required String email, required String password}) {
    return _apiUtil.getData(email: email, password: password);
  }

  @override
  Future<PrimaryUserModelDomain> authorization(
      {required String email, required String password, required String name}) {
    return _apiUtil.authorization(email: email, password: password, name: name);
  }

  @override
  Future<bool> checkUser({required String email, required String password}) {
    return _apiUtil.checkUser(email: email, password: password);
  }
}
