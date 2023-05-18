import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:internet_magazine/feature/domain/model/god/create/data_model_domain.dart';

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
    @HiveField(6) required DataModelDomain parameters,
    @HiveField(7) required String description,
    @HiveField(8) required String category,
  }) = _SaveProductModelDomain;
}
