import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/busket/primary_busket_save_model.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_save_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/create/data_model_domain.dart';

class BusketSaveProductMapper {
  static PrimaryBusketSaveModelDomain fromJson(
      PrimaryBusketSaveModel saveProduct) {
    return saveProduct.maybeWhen(
      success: (success) {
        return PrimaryBusketSaveModelDomain.success(
          SaveProductModelDomain(
            image: success.image,
            name: success.name,
            count: success.count,
            price: success.price,
            isSelected: false,
            id: success.id,
            // parameters: List.generate(
            //   success.parameters.length,
            //   (index) => DataModelDomain(
            //     key: success.parameters[index].parameter,
            //     value: success.parameters[index].description,
            //     id: success.parameters[index].id,
            //   ),
            // ),
            parameters: DataModelDomain(
              id: success.parameters.id,
                value: success.parameters.description,
                key: success.parameters.parameter
            ),
            category: success.category,
            description: success.description,
          ),
        );
      },
      error: (error) {
        return PrimaryBusketSaveModelDomain.error(
          ErrorModelDomain(
            code: error.code,
            message: error.message,
          ),
        );
      },
      orElse: () {
        return const PrimaryBusketSaveModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
