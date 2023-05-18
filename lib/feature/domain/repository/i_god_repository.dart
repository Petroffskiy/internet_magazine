import 'package:internet_magazine/feature/data/api/request/god/create_product_body.dart';
import 'package:internet_magazine/feature/domain/model/god/create/primary_god_create_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_products_model_domain.dart';

abstract class IGodRepositoryDomain {
  Future<PrimaryGodProductsModelDomain> getGodData();
  Future<PrimaryGodGadgetsModelDomain> getGadget();
  Future<PrimaryGodCreateModelDomain> createProduct(
      {required CreateProductBody product});
}
