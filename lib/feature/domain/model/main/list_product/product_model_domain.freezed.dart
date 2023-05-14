// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductModelDomain {
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductModelDomainCopyWith<ProductModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelDomainCopyWith<$Res> {
  factory $ProductModelDomainCopyWith(
          ProductModelDomain value, $Res Function(ProductModelDomain) then) =
      _$ProductModelDomainCopyWithImpl<$Res, ProductModelDomain>;
  @useResult
  $Res call(
      {String category,
      String name,
      int price,
      String image,
      String description,
      int count});
}

/// @nodoc
class _$ProductModelDomainCopyWithImpl<$Res, $Val extends ProductModelDomain>
    implements $ProductModelDomainCopyWith<$Res> {
  _$ProductModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? name = null,
    Object? price = null,
    Object? image = null,
    Object? description = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelDomainCopyWith<$Res>
    implements $ProductModelDomainCopyWith<$Res> {
  factory _$$_ProductModelDomainCopyWith(_$_ProductModelDomain value,
          $Res Function(_$_ProductModelDomain) then) =
      __$$_ProductModelDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      String name,
      int price,
      String image,
      String description,
      int count});
}

/// @nodoc
class __$$_ProductModelDomainCopyWithImpl<$Res>
    extends _$ProductModelDomainCopyWithImpl<$Res, _$_ProductModelDomain>
    implements _$$_ProductModelDomainCopyWith<$Res> {
  __$$_ProductModelDomainCopyWithImpl(
      _$_ProductModelDomain _value, $Res Function(_$_ProductModelDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? name = null,
    Object? price = null,
    Object? image = null,
    Object? description = null,
    Object? count = null,
  }) {
    return _then(_$_ProductModelDomain(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductModelDomain implements _ProductModelDomain {
  const _$_ProductModelDomain(
      {required this.category,
      required this.name,
      required this.price,
      required this.image,
      required this.description,
      required this.count});

  @override
  final String category;
  @override
  final String name;
  @override
  final int price;
  @override
  final String image;
  @override
  final String description;
  @override
  final int count;

  @override
  String toString() {
    return 'ProductModelDomain(category: $category, name: $name, price: $price, image: $image, description: $description, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelDomain &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, name, price, image, description, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelDomainCopyWith<_$_ProductModelDomain> get copyWith =>
      __$$_ProductModelDomainCopyWithImpl<_$_ProductModelDomain>(
          this, _$identity);
}

abstract class _ProductModelDomain implements ProductModelDomain {
  const factory _ProductModelDomain(
      {required final String category,
      required final String name,
      required final int price,
      required final String image,
      required final String description,
      required final int count}) = _$_ProductModelDomain;

  @override
  String get category;
  @override
  String get name;
  @override
  int get price;
  @override
  String get image;
  @override
  String get description;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelDomainCopyWith<_$_ProductModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
