import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameter_request_model.freezed.dart';
// part 'parameter_request_model.g.dart';

@freezed
class ParameterRequestModel with _$ParameterRequestModel {
  const factory ParameterRequestModel({
    required int id,
    required String parameter,
    required String description,
  }) = _ParameterRequestModel;

   Map<String, dynamic> toJson() {
    return {
      "id": id,
      "parameter": parameter,
      "description": description,
    };
  }

  // factory ParameterRequestModel.fromJson(Map<String, dynamic> map) =>
  //     _$ParameterRequestModelFromJson(map);
}
