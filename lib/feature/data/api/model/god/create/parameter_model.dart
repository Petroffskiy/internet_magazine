import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameter_model.freezed.dart';
part 'parameter_model.g.dart';

@JsonSerializable(anyMap: true)
@freezed
class ParameterModel with _$ParameterModel {
  const factory ParameterModel({
    required String parameter,
    required String description,
    required String? id,
  }) = _ParameterModel;

  // factory ParameterModel.fromJson(map) {
  //   return ParameterModel(
  //       description: map['description'],
  //       parameter: map['parameter'],
  //       id: map['id'],);
  // }
    factory ParameterModel.fromJson(Map<String, dynamic> json) =>
      _$ParameterModelFromJson(json);
}
