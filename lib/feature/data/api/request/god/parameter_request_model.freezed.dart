// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParameterRequestModel {
  int get id => throw _privateConstructorUsedError;
  String get parameter => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParameterRequestModelCopyWith<ParameterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterRequestModelCopyWith<$Res> {
  factory $ParameterRequestModelCopyWith(ParameterRequestModel value,
          $Res Function(ParameterRequestModel) then) =
      _$ParameterRequestModelCopyWithImpl<$Res, ParameterRequestModel>;
  @useResult
  $Res call({int id, String parameter, String description});
}

/// @nodoc
class _$ParameterRequestModelCopyWithImpl<$Res,
        $Val extends ParameterRequestModel>
    implements $ParameterRequestModelCopyWith<$Res> {
  _$ParameterRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ParameterRequestModelCopyWith<$Res>
    implements $ParameterRequestModelCopyWith<$Res> {
  factory _$$_ParameterRequestModelCopyWith(_$_ParameterRequestModel value,
          $Res Function(_$_ParameterRequestModel) then) =
      __$$_ParameterRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String parameter, String description});
}

/// @nodoc
class __$$_ParameterRequestModelCopyWithImpl<$Res>
    extends _$ParameterRequestModelCopyWithImpl<$Res, _$_ParameterRequestModel>
    implements _$$_ParameterRequestModelCopyWith<$Res> {
  __$$_ParameterRequestModelCopyWithImpl(_$_ParameterRequestModel _value,
      $Res Function(_$_ParameterRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameter = null,
    Object? description = null,
  }) {
    return _then(_$_ParameterRequestModel(
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

class _$_ParameterRequestModel implements _ParameterRequestModel {
  const _$_ParameterRequestModel(
      {required this.id, required this.parameter, required this.description});

  @override
  final int id;
  @override
  final String parameter;
  @override
  final String description;

  @override
  String toString() {
    return 'ParameterRequestModel(id: $id, parameter: $parameter, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParameterRequestModel &&
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
  _$$_ParameterRequestModelCopyWith<_$_ParameterRequestModel> get copyWith =>
      __$$_ParameterRequestModelCopyWithImpl<_$_ParameterRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "parameter": parameter,
      "description": description,
    };
  }
}

abstract class _ParameterRequestModel implements ParameterRequestModel {
  const factory _ParameterRequestModel(
      {required final int id,
      required final String parameter,
      required final String description}) = _$_ParameterRequestModel;

  @override
  int get id;
  @override
  String get parameter;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ParameterRequestModelCopyWith<_$_ParameterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
