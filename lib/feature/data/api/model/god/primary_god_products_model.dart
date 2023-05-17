import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/products/product_model.dart';

part 'primary_god_products_model.freezed.dart';

@freezed
class PrimaryGodProductsModel with _$PrimaryGodProductsModel {
  const factory PrimaryGodProductsModel.success(
      List<ProductModel> listProduct) = Success;
  const factory PrimaryGodProductsModel.error(ErrorModel error) = Error;
}
