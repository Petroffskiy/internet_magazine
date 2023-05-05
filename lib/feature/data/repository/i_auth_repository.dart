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
}
