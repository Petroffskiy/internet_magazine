import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/products/product_model.dart';

part 'primary_product_model.freezed.dart';

@freezed
class PrimaryProductModel with _$PrimaryProductModel {
  const factory PrimaryProductModel.success(List<ProductModel> listProduct) =
      Success;
      const factory PrimaryProductModel.error(ErrorModel error) = Error;
}
