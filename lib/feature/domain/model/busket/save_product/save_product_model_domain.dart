import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'save_product_model_domain.freezed.dart';
part 'save_product_model_domain.g.dart';

@freezed
@HiveType(typeId: 1, adapterName: "Busket")
class SaveProductModelDomain with _$SaveProductModelDomain {
  const factory SaveProductModelDomain({
    @HiveField(0) required String image,
    @HiveField(1) required String name,
    @HiveField(2) required int count,
    @HiveField(3) required int price,
    @HiveField(4) required bool isSelected,
    @HiveField(5) required String id,
  }) = _SaveProductModelDomain;
}
