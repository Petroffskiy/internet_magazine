import "package:freezed_annotation/freezed_annotation.dart";
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';

part 'primary_update_password_domain.freezed.dart';

@freezed
class PrimaryUpdatePasswordDomain with _$PrimaryUpdatePasswordDomain {
  const factory PrimaryUpdatePasswordDomain.success(String password) = Success;
  const factory PrimaryUpdatePasswordDomain.error(ErrorModelDomain error) = Error;
}
