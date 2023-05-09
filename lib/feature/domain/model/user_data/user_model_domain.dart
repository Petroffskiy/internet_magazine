import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model_domain.freezed.dart';

part "user_model_domain.g.dart";

@freezed
@HiveType(typeId: 0, adapterName: "User")
class UserModelDomain with _$UserModelDomain {
  const factory UserModelDomain({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String password,
    @HiveField(3) required bool role,
    @HiveField(4) required String login,
  }) = _UserModelDomain;
}
