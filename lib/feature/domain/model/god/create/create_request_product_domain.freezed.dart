// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_product_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRequestProductModelDomain {
  String get idCategory => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<ParametersRequestModelDomain> get parameters =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRequestProductModelDomainCopyWith<CreateRequestProductModelDomain>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestProductModelDomainCopyWith<$Res> {
  factory $CreateRequestProductModelDomainCopyWith(
          CreateRequestProductModelDomain value,
          $Res Function(CreateRequestProductModelDomain) then) =
      _$CreateRequestProductModelDomainCopyWithImpl<$Res,
          CreateRequestProductModelDomain>;
  @useResult
  $Res call(
      {String idCategory,
      String count,
      String name,
      String image,
      List<ParametersRequestModelDomain> parameters});
}

/// @nodoc
class _$CreateRequestProductModelDomainCopyWithImpl<$Res,
        $Val extends CreateRequestProductModelDomain>
    implements $CreateRequestProductModelDomainCopyWith<$Res> {
  _$CreateRequestProductModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = null,
    Object? count = null,
    Object? name = null,
    Object? image = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      idCategory: null == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParametersRequestModelDomain>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateRequestProductModelDomainCopyWith<$Res>
    implements $CreateRequestProductModelDomainCopyWith<$Res> {
  factory _$$_CreateRequestProductModelDomainCopyWith(
          _$_CreateRequestProductModelDomain value,
          $Res Function(_$_CreateRequestProductModelDomain) then) =
      __$$_CreateRequestProductModelDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idCategory,
      String count,
      String name,
      String image,
      List<ParametersRequestModelDomain> parameters});
}

/// @nodoc
class __$$_CreateRequestProductModelDomainCopyWithImpl<$Res>
    extends _$CreateRequestProductModelDomainCopyWithImpl<$Res,
        _$_CreateRequestProductModelDomain>
    implements _$$_CreateRequestProductModelDomainCopyWith<$Res> {
  __$$_CreateRequestProductModelDomainCopyWithImpl(
      _$_CreateRequestProductModelDomain _value,
      $Res Function(_$_CreateRequestProductModelDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCategory = null,
    Object? count = null,
    Object? name = null,
    Object? image = null,
    Object? parameters = null,
  }) {
    return _then(_$_CreateRequestProductModelDomain(
      idCategory: null == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParametersRequestModelDomain>,
    ));
  }
}

/// @nodoc

class _$_CreateRequestProductModelDomain
    implements _CreateRequestProductModelDomain {
  const _$_CreateRequestProductModelDomain(
      {required this.idCategory,
      required this.count,
      required this.name,
      required this.image,
      required final List<ParametersRequestModelDomain> parameters})
      : _parameters = parameters;

  @override
  final String idCategory;
  @override
  final String count;
  @override
  final String name;
  @override
  final String image;
  final List<ParametersRequestModelDomain> _parameters;
  @override
  List<ParametersRequestModelDomain> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  @override
  String toString() {
    return 'CreateRequestProductModelDomain(idCategory: $idCategory, count: $count, name: $name, image: $image, parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRequestProductModelDomain &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCategory, count, name, image,
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateRequestProductModelDomainCopyWith<
          _$_CreateRequestProductModelDomain>
      get copyWith => __$$_CreateRequestProductModelDomainCopyWithImpl<
          _$_CreateRequestProductModelDomain>(this, _$identity);
}

abstract class _CreateRequestProductModelDomain
    implements CreateRequestProductModelDomain {
  const factory _CreateRequestProductModelDomain(
          {required final String idCategory,
          required final String count,
          required final String name,
          required final String image,
          required final List<ParametersRequestModelDomain> parameters}) =
      _$_CreateRequestProductModelDomain;

  @override
  String get idCategory;
  @override
  String get count;
  @override
  String get name;
  @override
  String get image;
  @override
  List<ParametersRequestModelDomain> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRequestProductModelDomainCopyWith<
          _$_CreateRequestProductModelDomain>
      get copyWith => throw _privateConstructorUsedError;
}
