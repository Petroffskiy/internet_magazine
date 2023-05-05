// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModelDomain {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get password => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get role => throw _privateConstructorUsedError;
  @HiveField(4)
  String get login => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelDomainCopyWith<UserModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelDomainCopyWith<$Res> {
  factory $UserModelDomainCopyWith(
          UserModelDomain value, $Res Function(UserModelDomain) then) =
      _$UserModelDomainCopyWithImpl<$Res, UserModelDomain>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String password,
      @HiveField(3) bool role,
      @HiveField(4) String login});
}

/// @nodoc
class _$UserModelDomainCopyWithImpl<$Res, $Val extends UserModelDomain>
    implements $UserModelDomainCopyWith<$Res> {
  _$UserModelDomainCopyWithImpl(this._value, this._then);

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
    Object? role = null,
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as bool,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelDomainCopyWith<$Res>
    implements $UserModelDomainCopyWith<$Res> {
  factory _$$_UserModelDomainCopyWith(
          _$_UserModelDomain value, $Res Function(_$_UserModelDomain) then) =
      __$$_UserModelDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String password,
      @HiveField(3) bool role,
      @HiveField(4) String login});
}

/// @nodoc
class __$$_UserModelDomainCopyWithImpl<$Res>
    extends _$UserModelDomainCopyWithImpl<$Res, _$_UserModelDomain>
    implements _$$_UserModelDomainCopyWith<$Res> {
  __$$_UserModelDomainCopyWithImpl(
      _$_UserModelDomain _value, $Res Function(_$_UserModelDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? password = null,
    Object? role = null,
    Object? login = null,
  }) {
    return _then(_$_UserModelDomain(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as bool,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0, adapterName: "User")
class _$_UserModelDomain implements _UserModelDomain {
  const _$_UserModelDomain(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.password,
      @HiveField(3) required this.role,
      @HiveField(4) required this.login});

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String password;
  @override
  @HiveField(3)
  final bool role;
  @override
  @HiveField(4)
  final String login;

  @override
  String toString() {
    return 'UserModelDomain(id: $id, name: $name, password: $password, role: $role, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelDomain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, password, role, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelDomainCopyWith<_$_UserModelDomain> get copyWith =>
      __$$_UserModelDomainCopyWithImpl<_$_UserModelDomain>(this, _$identity);
}

abstract class _UserModelDomain implements UserModelDomain {
  const factory _UserModelDomain(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String password,
      @HiveField(3) required final bool role,
      @HiveField(4) required final String login}) = _$_UserModelDomain;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get password;
  @override
  @HiveField(3)
  bool get role;
  @override
  @HiveField(4)
  String get login;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelDomainCopyWith<_$_UserModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
