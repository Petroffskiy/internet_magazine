import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';

part 'primary_create_product_model.freezed.dart';

@freezed
class PrimaryCreateProductModel with _$PrimaryCreateProductModel {
  const factory PrimaryCreateProductModel.success(bool isCreated) = Success;
  const factory PrimaryCreateProductModel.error(ErrorModel error) = Error;
}
