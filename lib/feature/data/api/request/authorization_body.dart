import 'package:freezed_annotation/freezed_annotation.dart';
part "authorization_body.freezed.dart";
part "authorization_body.g.dart";

@freezed
class AuthorizationBody with _$AuthorizationBody {
  @JsonSerializable(explicitToJson: true)
  const factory AuthorizationBody({
    required String id,
    required String name,
    required String password,
    required String login,
    @Default(false) bool role,
  }) = _AuthorizationBody;

  factory AuthorizationBody.fromJson(Map<String, dynamic> map) =>
      _$AuthorizationBodyFromJson(map);

}
