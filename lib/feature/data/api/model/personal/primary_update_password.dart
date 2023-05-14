import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';

part 'primary_update_password.freezed.dart';

@freezed
class PrimaryUpdatePassword with _$PrimaryUpdatePassword {
  const factory PrimaryUpdatePassword.success(String password) = Success;
  const factory PrimaryUpdatePassword.error(ErrorModel error) = Error;
}
