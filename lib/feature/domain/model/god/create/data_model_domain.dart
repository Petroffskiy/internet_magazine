import "package:freezed_annotation/freezed_annotation.dart";

part 'data_model_domain.freezed.dart';

@freezed
class DataModelDomain with _$DataModelDomain {
  const factory DataModelDomain({required String key, required String value}) =
      _DataModelDomain;
}
