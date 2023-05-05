
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/user/user_model.dart';

part 'primary_user_model.freezed.dart';

@freezed
class PrimaryUserModel with _$PrimaryUserModel {
  const factory PrimaryUserModel.success(UserModel user) = Success;
  const factory PrimaryUserModel.error(ErrorModel error) = Error;
}