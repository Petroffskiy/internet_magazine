import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/busket/primary_busket_model.dart';
import 'package:internet_magazine/feature/domain/model/busket/busket_data/primary_busket_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';

class BusketDataMapper {
  static PrimaryBusketModelDomain fromJson(PrimaryBusketModel listProduct) {
    return listProduct.maybeWhen(
      success: (success) {
        return PrimaryBusketModelDomain.success(
          List.generate(
            success.length,
            (index) => SaveProductModelDomain(
              count: success[index].count,
              image: success[index].image,
              isSelected: success[index].selected,
              name: success[index].name,
              price: success[index].price,
            ),
          ),
        );
      },
      error: (error) {
        return PrimaryBusketModelDomain.error(
          ErrorModelDomain(
            code: error.code,
            message: error.message,
          ),
        );
      },
      orElse: () {
        return const PrimaryBusketModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
