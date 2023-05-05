
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({required String message, required int code,}) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String,dynamic> map) => _$ErrorModelFromJson(map);
}