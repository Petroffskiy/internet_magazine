// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorizationBody _$$_AuthorizationBodyFromJson(Map<String, dynamic> json) =>
    _$_AuthorizationBody(
      id: json['id'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      login: json['login'] as String,
      role: json['role'] as String? ?? "user",
    );

Map<String, dynamic> _$$_AuthorizationBodyToJson(
        _$_AuthorizationBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'password': instance.password,
      'login': instance.login,
      'role': instance.role,
    };
