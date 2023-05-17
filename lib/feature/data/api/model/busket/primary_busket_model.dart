import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/request/save_product/save_product_body.dart';

part "primary_busket_model.freezed.dart";

@freezed
class PrimaryBusketModel with _$PrimaryBusketModel {
  const factory PrimaryBusketModel.success(List<SaveProductBody> listProduct) =
      Success;
  const factory PrimaryBusketModel.error(ErrorModel error) = Error;

 
}
