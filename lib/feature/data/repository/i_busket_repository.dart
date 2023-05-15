import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_busket_repository.dart';

class IBusketRepository extends IBusketRepositoryDomain {
  final ApiUtil _apiUtil;

  IBusketRepository(this._apiUtil);

  @override
  Future<PrimaryBusketModelDomain> busketModel() {
    return _apiUtil.getBusketData();
  }
}
