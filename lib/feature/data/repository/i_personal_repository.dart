import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/domain/model/personal/primary_update_password_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_personal_repository.dart';

class IPersonalRepository extends IPersonalRepositoryDomain {
  final ApiUtil _apiUtil;

  IPersonalRepository(this._apiUtil);

  @override
  Future<PrimaryUpdatePasswordDomain> updatePassword(
      {required String password}) {
    return _apiUtil.getUpdate(password: password);
  }
}
