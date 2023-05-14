import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';

part 'primary_products_model_domain.freezed.dart';

@freezed
class PrimaryProductsModelDomain with _$PrimaryProductsModelDomain {
  const factory PrimaryProductsModelDomain.success(
      List<ProductModelDomain> listProducts) = Success;
  const factory PrimaryProductsModelDomain.error(ErrorModelDomain error) =
      Error;
}
