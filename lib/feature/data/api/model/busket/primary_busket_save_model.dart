import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/products/product_model.dart';

part 'primary_busket_save_model.freezed.dart';

@freezed
class PrimaryBusketSaveModel with _$PrimaryBusketSaveModel {
  const factory PrimaryBusketSaveModel.success(ProductModel saveProdunc) = Success;
  const factory PrimaryBusketSaveModel.error(ErrorModel error) = Error;
}
