// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorizationBody _$AuthorizationBodyFromJson(Map<String, dynamic> json) {
  return _AuthorizationBody.fromJson(json);
}

/// @nodoc
mixin _$AuthorizationBody {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationBodyCopyWith<AuthorizationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationBodyCopyWith<$Res> {
  factory $AuthorizationBodyCopyWith(
          AuthorizationBody value, $Res Function(AuthorizationBody) then) =
      _$AuthorizationBodyCopyWithImpl<$Res, AuthorizationBody>;
  @useResult
  $Res call(
      {String id, String name, String password, String login, String role});
}

/// @nodoc
class _$AuthorizationBodyCopyWithImpl<$Res, $Val extends AuthorizationBody>
    implements $AuthorizationBodyCopyWith<$Res> {
  _$AuthorizationBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? password = null,
    Object? login = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationBodyCopyWith<$Res>
    implements $AuthorizationBodyCopyWith<$Res> {
  factory _$$_AuthorizationBodyCopyWith(_$_AuthorizationBody value,
          $Res Function(_$_AuthorizationBody) then) =
      __$$_AuthorizationBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String password, String login, String role});
}

/// @nodoc
class __$$_AuthorizationBodyCopyWithImpl<$Res>
    extends _$AuthorizationBodyCopyWithImpl<$Res, _$_AuthorizationBody>
    implements _$$_AuthorizationBodyCopyWith<$Res> {
  __$$_AuthorizationBodyCopyWithImpl(
      _$_AuthorizationBody _value, $Res Function(_$_AuthorizationBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? password = null,
    Object? login = null,
    Object? role = null,
  }) {
    return _then(_$_AuthorizationBody(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AuthorizationBody implements _AuthorizationBody {
  const _$_AuthorizationBody(
      {required this.id,
      required this.name,
      required this.password,
      required this.login,
      this.role = "user"});

  factory _$_AuthorizationBody.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorizationBodyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String password;
  @override
  final String login;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'AuthorizationBody(id: $id, name: $name, password: $password, login: $login, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationBody &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, password, login, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationBodyCopyWith<_$_AuthorizationBody> get copyWith =>
      __$$_AuthorizationBodyCopyWithImpl<_$_AuthorizationBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizationBodyToJson(
      this,
    );
  }
}

abstract class _AuthorizationBody implements AuthorizationBody {
  const factory _AuthorizationBody(
      {required final String id,
      required final String name,
      required final String password,
      required final String login,
      final String role}) = _$_AuthorizationBody;

  factory _AuthorizationBody.fromJson(Map<String, dynamic> json) =
      _$_AuthorizationBody.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get password;
  @override
  String get login;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationBodyCopyWith<_$_AuthorizationBody> get copyWith =>
      throw _privateConstructorUsedError;
}
