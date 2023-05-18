import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/god/primary_create_product_model.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/create/primary_god_create_model_domain.dart';

class GodCreateMapper {
  static PrimaryGodCreateModelDomain fromJson(
      PrimaryCreateProductModel createProduct) {
    return createProduct.maybeWhen(
      success: (success) {
        return PrimaryGodCreateModelDomain.success(success);
      },
      error: (error) {
        return PrimaryGodCreateModelDomain.error(
          ErrorModelDomain(
            code: error.code,
            message: error.message,
          ),
        );
      },
      orElse: () {
        return const PrimaryGodCreateModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
