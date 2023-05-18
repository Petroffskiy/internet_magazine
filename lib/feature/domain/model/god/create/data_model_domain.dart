import "package:freezed_annotation/freezed_annotation.dart";
import 'package:hive/hive.dart';

part 'data_model_domain.freezed.dart';
part 'data_model_domain.g.dart';

@freezed
@HiveType(typeId: 3, adapterName: "Parameter")
class DataModelDomain with _$DataModelDomain {
  const factory DataModelDomain({
    @HiveField(0) required String key,
    @HiveField(1) required String value,
    @HiveField(2) required String? id,
  }) = _DataModelDomain;
}
