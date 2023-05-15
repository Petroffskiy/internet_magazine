import 'package:internet_magazine/feature/data/api/request/save_product/save_product_body.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';

class SaveProductMapper {
  static SaveProductBody toJson(SaveProductModelDomain product) {
    return SaveProductBody(
      image: product.image,
      name: product.name,
      count: product.count,
      price: product.price,
      selected: product.isSelected
    );
  }
}
