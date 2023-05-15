import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/main/products/primary_product_model.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/primary_products_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';

class ProductsModelMapper {
  static PrimaryProductsModelDomain fromJson(PrimaryProductModel listProduct) {
    return listProduct.maybeWhen(
      success: (success) {
        return PrimaryProductsModelDomain.success(List.generate(success.length, (index) => 
        ProductModelDomain(
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
        return PrimaryProductsModelDomain.error(
          ErrorModelDomain(
            message: error.message,
            code: error.code,
          ),
        );
      },
      orElse: () {
        return const PrimaryProductsModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}