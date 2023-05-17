import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_product/product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

part 'primary_god_products_model_domain.freezed.dart';

@freezed
class PrimaryGodProductsModelDomain with _$PrimaryGodProductsModelDomain {
  const factory PrimaryGodProductsModelDomain.success(
      List<ProductModelDomain> listProduct) = Success;
  const factory PrimaryGodProductsModelDomain.error(ErrorModelDomain error) =
      Error;
}
