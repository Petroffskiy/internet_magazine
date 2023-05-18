// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParameterModel _$ParameterModelFromJson(Map<String, dynamic> json) {
  return _ParameterModel.fromJson(json);
}

/// @nodoc
mixin _$ParameterModel {
  String get parameter => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterModelCopyWith<ParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterModelCopyWith<$Res> {
  factory $ParameterModelCopyWith(
          ParameterModel value, $Res Function(ParameterModel) then) =
      _$ParameterModelCopyWithImpl<$Res, ParameterModel>;
  @useResult
  $Res call({String parameter, String description, String? id});
}

/// @nodoc
class _$ParameterModelCopyWithImpl<$Res, $Val extends ParameterModel>
    implements $ParameterModelCopyWith<$Res> {
  _$ParameterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameter = null,
    Object? description = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParameterModelCopyWith<$Res>
    implements $ParameterModelCopyWith<$Res> {
  factory _$$_ParameterModelCopyWith(
          _$_ParameterModel value, $Res Function(_$_ParameterModel) then) =
      __$$_ParameterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String parameter, String description, String? id});
}

/// @nodoc
class __$$_ParameterModelCopyWithImpl<$Res>
    extends _$ParameterModelCopyWithImpl<$Res, _$_ParameterModel>
    implements _$$_ParameterModelCopyWith<$Res> {
  __$$_ParameterModelCopyWithImpl(
      _$_ParameterModel _value, $Res Function(_$_ParameterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameter = null,
    Object? description = null,
    Object? id = freezed,
  }) {
    return _then(_$_ParameterModel(
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParameterModel implements _ParameterModel {
  const _$_ParameterModel(
      {required this.parameter, required this.description, required this.id});

  factory _$_ParameterModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParameterModelFromJson(json);

  @override
  final String parameter;
  @override
  final String description;
  @override
  final String? id;

  @override
  String toString() {
    return 'ParameterModel(parameter: $parameter, description: $description, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParameterModel &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parameter, description, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParameterModelCopyWith<_$_ParameterModel> get copyWith =>
      __$$_ParameterModelCopyWithImpl<_$_ParameterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParameterModelToJson(
      this,
    );
  }
}

abstract class _ParameterModel implements ParameterModel {
  const factory _ParameterModel(
      {required final String parameter,
      required final String description,
      required final String? id}) = _$_ParameterModel;

  factory _ParameterModel.fromJson(Map<String, dynamic> json) =
      _$_ParameterModel.fromJson;

  @override
  String get parameter;
  @override
  String get description;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ParameterModelCopyWith<_$_ParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
