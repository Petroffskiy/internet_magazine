import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/domain/model/gadgets/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';

class IMainRepository extends IMainRepositoryDomain {
  final ApiUtil _apiUtil;

  IMainRepository(this._apiUtil);

  @override
  Future<PrimaryGadgetsModelDomain> getGatgets() {
    return _apiUtil.getGadgets();
  }
}
