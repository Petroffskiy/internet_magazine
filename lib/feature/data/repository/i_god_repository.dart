import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/domain/model/god/primary_god_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_god_repository.dart';

class IGodRepository extends IGodRepositoryDomain {
  final ApiUtil _apiUtil;
  IGodRepository(this._apiUtil);
  @override
  Future<PrimaryGodProductsModelDomain> getGodData() {
    return _apiUtil.getGodData();
  }
}
