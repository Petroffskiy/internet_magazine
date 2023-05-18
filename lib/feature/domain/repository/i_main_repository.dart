import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_save_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';

abstract class IMainRepositoryDomain {
  Future<PrimaryGadgetsModelDomain> getGatgets();
  Future<PrimaryProductsModelDomain> getProduct({required List<String> finder});
  //TODO: переделать сохранение продукта
  Future<PrimaryBusketSaveModelDomain> saveProduct({required SaveProductModelDomain product});
}
