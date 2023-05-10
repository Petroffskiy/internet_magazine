// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gadgets_model_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GadgetsModelDomain {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GadgetsModelDomainCopyWith<GadgetsModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GadgetsModelDomainCopyWith<$Res> {
  factory $GadgetsModelDomainCopyWith(
          GadgetsModelDomain value, $Res Function(GadgetsModelDomain) then) =
      _$GadgetsModelDomainCopyWithImpl<$Res, GadgetsModelDomain>;
  @useResult
  $Res call({int id, String image, String name});
}

/// @nodoc
class _$GadgetsModelDomainCopyWithImpl<$Res, $Val extends GadgetsModelDomain>
    implements $GadgetsModelDomainCopyWith<$Res> {
  _$GadgetsModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GadgetsModelCopyWith<$Res>
    implements $GadgetsModelDomainCopyWith<$Res> {
  factory _$$_GadgetsModelCopyWith(
          _$_GadgetsModel value, $Res Function(_$_GadgetsModel) then) =
      __$$_GadgetsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String image, String name});
}

/// @nodoc
class __$$_GadgetsModelCopyWithImpl<$Res>
    extends _$GadgetsModelDomainCopyWithImpl<$Res, _$_GadgetsModel>
    implements _$$_GadgetsModelCopyWith<$Res> {
  __$$_GadgetsModelCopyWithImpl(
      _$_GadgetsModel _value, $Res Function(_$_GadgetsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_$_GadgetsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GadgetsModel implements _GadgetsModel {
  const _$_GadgetsModel(
      {required this.id, required this.image, required this.name});

  @override
  final int id;
  @override
  final String image;
  @override
  final String name;

  @override
  String toString() {
    return 'GadgetsModelDomain(id: $id, image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GadgetsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GadgetsModelCopyWith<_$_GadgetsModel> get copyWith =>
      __$$_GadgetsModelCopyWithImpl<_$_GadgetsModel>(this, _$identity);
}

abstract class _GadgetsModel implements GadgetsModelDomain {
  const factory _GadgetsModel(
      {required final int id,
      required final String image,
      required final String name}) = _$_GadgetsModel;

  @override
  int get id;
  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GadgetsModelCopyWith<_$_GadgetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
