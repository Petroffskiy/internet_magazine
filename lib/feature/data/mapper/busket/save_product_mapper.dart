import 'package:internet_magazine/feature/data/api/model/god/create/parameter_model.dart';
import 'package:internet_magazine/feature/data/api/request/save_product/save_product_body.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';

class SaveProductMapper {
  static SaveProductBody toJson(SaveProductModelDomain product) {
    return SaveProductBody(
      image: product.image,
      name: product.name,
      count: product.count,
      price: product.price,
      selected: product.isSelected,
      id: '',
      // parameters: List.generate(
      //   product.parameters.length,
      //   (index) => ParameterModel(
      //     parameter: product.parameters[index].key,
      //     description: product.parameters[index].value,
      //     id: product.parameters[index].id,
      //   ),
      parameters: ParameterModel(
        parameter: product.parameters.key,
        description: product.parameters.value,
        id: product.parameters.id,
      ),
      category: product.category,
      description: product.description,
    );
  }
}
