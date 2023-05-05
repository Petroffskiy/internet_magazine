import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

import '../error_domain/error_model_domain.dart';

part 'primary_user_model_domain.freezed.dart';

@freezed
class PrimaryUserModelDomain with _$PrimaryUserModelDomain {
  const factory PrimaryUserModelDomain.success(UserModelDomain user) =  Success;
  const factory PrimaryUserModelDomain.error(ErrorModelDomain error) =  Error;
}