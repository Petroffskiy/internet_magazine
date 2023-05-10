import 'package:internet_magazine/feature/domain/model/gadgets/list_gadgets/primary_gadgets_model_domain.dart';

abstract class IMainRepositoryDomain {
  Future<PrimaryGadgetsModelDomain> getGatgets();
}
