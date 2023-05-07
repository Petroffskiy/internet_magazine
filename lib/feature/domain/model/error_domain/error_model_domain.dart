import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model_domain.freezed.dart';

@freezed
class ErrorModelDomain with _$ErrorModelDomain {
  const factory ErrorModelDomain({
    required String message,
    required int code,
  }) = _ErrorModelDomain;
}
