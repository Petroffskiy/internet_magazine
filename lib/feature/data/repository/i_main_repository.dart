import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_save_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/primary_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';

class IMainRepository extends IMainRepositoryDomain {
  final ApiUtil _apiUtil;

  IMainRepository(this._apiUtil);

  @override
  Future<PrimaryGadgetsModelDomain> getGatgets() {
    return _apiUtil.getGadgets();
  }

  @override
  Future<PrimaryProductsModelDomain> getProduct(
      {required List<String> finder}) {
    return _apiUtil.getProducts(finder: finder);
  }

  @override
  Future<PrimaryBusketSaveModelDomain> saveProduct({required SaveProductModelDomain product}) {
    return _apiUtil.saveProduct(product: product);
  }
}
