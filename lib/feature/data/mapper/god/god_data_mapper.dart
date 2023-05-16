import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/god/primary_god_products_model.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/primary_god_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';

class GodDataMapper {
  static PrimaryGodProductsModelDomain fromJson(
      PrimaryGodProductsModel listProduct) {
    return listProduct.maybeWhen(
      success: (success) {
        return PrimaryGodProductsModelDomain.success(
          List.generate(
            success.length,
            (index) => ProductModelDomain(
              category: success[index].category,
              count: success[index].count,
              description: success[index].description,
              image: success[index].image,
              name: success[index].name,
              price: success[index].price,
            ),
          ),
        );
      },
      error: (error) {
        return PrimaryGodProductsModelDomain.error(
          ErrorModelDomain(
            message: error.message,
            code: error.code,
          ),
        );
      },
      orElse: () {
        return const PrimaryGodProductsModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
