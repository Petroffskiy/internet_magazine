// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataModelDomain {
  @HiveField(0)
  String get key => throw _privateConstructorUsedError;
  @HiveField(1)
  String get value => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataModelDomainCopyWith<DataModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelDomainCopyWith<$Res> {
  factory $DataModelDomainCopyWith(
          DataModelDomain value, $Res Function(DataModelDomain) then) =
      _$DataModelDomainCopyWithImpl<$Res, DataModelDomain>;
  @useResult
  $Res call(
      {@HiveField(0) String key,
      @HiveField(1) String value,
      @HiveField(2) String? id});
}

/// @nodoc
class _$DataModelDomainCopyWithImpl<$Res, $Val extends DataModelDomain>
    implements $DataModelDomainCopyWith<$Res> {
  _$DataModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelDomainCopyWith<$Res>
    implements $DataModelDomainCopyWith<$Res> {
  factory _$$_DataModelDomainCopyWith(
          _$_DataModelDomain value, $Res Function(_$_DataModelDomain) then) =
      __$$_DataModelDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String key,
      @HiveField(1) String value,
      @HiveField(2) String? id});
}

/// @nodoc
class __$$_DataModelDomainCopyWithImpl<$Res>
    extends _$DataModelDomainCopyWithImpl<$Res, _$_DataModelDomain>
    implements _$$_DataModelDomainCopyWith<$Res> {
  __$$_DataModelDomainCopyWithImpl(
      _$_DataModelDomain _value, $Res Function(_$_DataModelDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? id = freezed,
  }) {
    return _then(_$_DataModelDomain(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataModelDomain implements _DataModelDomain {
  const _$_DataModelDomain(
      {@HiveField(0) required this.key,
      @HiveField(1) required this.value,
      @HiveField(2) required this.id});

  @override
  @HiveField(0)
  final String key;
  @override
  @HiveField(1)
  final String value;
  @override
  @HiveField(2)
  final String? id;

  @override
  String toString() {
    return 'DataModelDomain(key: $key, value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModelDomain &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelDomainCopyWith<_$_DataModelDomain> get copyWith =>
      __$$_DataModelDomainCopyWithImpl<_$_DataModelDomain>(this, _$identity);
}

abstract class _DataModelDomain implements DataModelDomain {
  const factory _DataModelDomain(
      {@HiveField(0) required final String key,
      @HiveField(1) required final String value,
      @HiveField(2) required final String? id}) = _$_DataModelDomain;

  @override
  @HiveField(0)
  String get key;
  @override
  @HiveField(1)
  String get value;
  @override
  @HiveField(2)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelDomainCopyWith<_$_DataModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
