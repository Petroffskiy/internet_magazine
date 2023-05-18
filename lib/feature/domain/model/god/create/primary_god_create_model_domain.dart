import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';

part 'primary_god_create_model_domain.freezed.dart';

@freezed
class PrimaryGodCreateModelDomain with _$PrimaryGodCreateModelDomain {
  const factory PrimaryGodCreateModelDomain.success(bool isCreated) = Success;
  const factory PrimaryGodCreateModelDomain.error(ErrorModelDomain error) =
      Error;
}
