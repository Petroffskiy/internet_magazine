import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model_domain.freezed.dart';

@freezed
class UserModelDomain with _$UserModelDomain {
  @HiveType(typeId: 0, adapterName: "User")
  const factory UserModelDomain({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String password,
    @HiveField(3) required bool role,
    @HiveField(4) required String login,
  }) = _UserModelDomain;
}
