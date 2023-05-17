import 'package:internet_magazine/feature/domain/model/god/product/primary_god_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_products_model_domain.dart';

abstract class IGodRepositoryDomain {
  Future<PrimaryGodProductsModelDomain> getGodData();
  Future<PrimaryGodGadgetsModelDomain> getGadget();
}
