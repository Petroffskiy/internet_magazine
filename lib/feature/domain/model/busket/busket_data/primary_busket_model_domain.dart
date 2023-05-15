import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';

part 'primary_busket_model_domain.freezed.dart';

@freezed
class PrimaryBusketModelDomain with _$PrimaryBusketModelDomain {
  const factory PrimaryBusketModelDomain.success(
      List<SaveProductModelDomain> listProduct) = Success;
  const factory PrimaryBusketModelDomain.error(
      ErrorModelDomain error) = Error;
}
