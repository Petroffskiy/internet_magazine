import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_model_domain.dart';

abstract class IBusketRepositoryDomain {
  Future<PrimaryBusketModelDomain> busketModel();

  void then(Null Function(dynamic data) param0) {}
}
