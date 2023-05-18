// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameters_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParametersRequestModelDomain {
  int get id => throw _privateConstructorUsedError;
  String get parameter => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParametersRequestModelDomainCopyWith<ParametersRequestModelDomain>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParametersRequestModelDomainCopyWith<$Res> {
  factory $ParametersRequestModelDomainCopyWith(
          ParametersRequestModelDomain value,
          $Res Function(ParametersRequestModelDomain) then) =
      _$ParametersRequestModelDomainCopyWithImpl<$Res,
          ParametersRequestModelDomain>;
  @useResult
  $Res call({int id, String parameter, String description});
}

/// @nodoc
class _$ParametersRequestModelDomainCopyWithImpl<$Res,
        $Val extends ParametersRequestModelDomain>
    implements $ParametersRequestModelDomainCopyWith<$Res> {
  _$ParametersRequestModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameter = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParametersRequestModelDomainCopyWith<$Res>
    implements $ParametersRequestModelDomainCopyWith<$Res> {
  factory _$$_ParametersRequestModelDomainCopyWith(
          _$_ParametersRequestModelDomain value,
          $Res Function(_$_ParametersRequestModelDomain) then) =
      __$$_ParametersRequestModelDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String parameter, String description});
}

/// @nodoc
class __$$_ParametersRequestModelDomainCopyWithImpl<$Res>
    extends _$ParametersRequestModelDomainCopyWithImpl<$Res,
        _$_ParametersRequestModelDomain>
    implements _$$_ParametersRequestModelDomainCopyWith<$Res> {
  __$$_ParametersRequestModelDomainCopyWithImpl(
      _$_ParametersRequestModelDomain _value,
      $Res Function(_$_ParametersRequestModelDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameter = null,
    Object? description = null,
  }) {
    return _then(_$_ParametersRequestModelDomain(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParametersRequestModelDomain implements _ParametersRequestModelDomain {
  const _$_ParametersRequestModelDomain(
      {required this.id, required this.parameter, required this.description});

  @override
  final int id;
  @override
  final String parameter;
  @override
  final String description;

  @override
  String toString() {
    return 'ParametersRequestModelDomain(id: $id, parameter: $parameter, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParametersRequestModelDomain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parameter, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParametersRequestModelDomainCopyWith<_$_ParametersRequestModelDomain>
      get copyWith => __$$_ParametersRequestModelDomainCopyWithImpl<
          _$_ParametersRequestModelDomain>(this, _$identity);
}

abstract class _ParametersRequestModelDomain
    implements ParametersRequestModelDomain {
  const factory _ParametersRequestModelDomain(
      {required final int id,
      required final String parameter,
      required final String description}) = _$_ParametersRequestModelDomain;

  @override
  int get id;
  @override
  String get parameter;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ParametersRequestModelDomainCopyWith<_$_ParametersRequestModelDomain>
      get copyWith => throw _privateConstructorUsedError;
}
