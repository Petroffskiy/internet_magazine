import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';



part 'primary_busket_save_model_domain.freezed.dart';

@freezed
class PrimaryBusketSaveModelDomain with _$PrimaryBusketSaveModelDomain {
  const factory PrimaryBusketSaveModelDomain.success(SaveProductModelDomain saveProduct) = Success;
  const factory PrimaryBusketSaveModelDomain.error(ErrorModelDomain error) = Error;


}
