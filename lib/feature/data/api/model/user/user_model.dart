import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String login,
    required String password,
    required bool role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> map) =>
      _$UserModelFromJson(map);
}
