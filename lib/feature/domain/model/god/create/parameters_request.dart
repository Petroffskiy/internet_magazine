import "package:freezed_annotation/freezed_annotation.dart";

part "parameters_request.freezed.dart";

@freezed
class ParametersRequestModelDomain with _$ParametersRequestModelDomain {
  const factory ParametersRequestModelDomain({
    required int id,
    required String parameter,
    required String description,
  }) = _ParametersRequestModelDomain;
}
