import 'package:internet_magazine/feature/domain/model/main/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';

abstract class IMainRepositoryDomain {
  Future<PrimaryGadgetsModelDomain> getGatgets();
  Future<PrimaryProductsModelDomain> getProduct({required List<String> finder});
}
