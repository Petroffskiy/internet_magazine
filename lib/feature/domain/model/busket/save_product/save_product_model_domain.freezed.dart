// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_product_model_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveProductModelDomain {
  @HiveField(0)
  String get image => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int get count => throw _privateConstructorUsedError;
  @HiveField(3)
  int get price => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveProductModelDomainCopyWith<SaveProductModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveProductModelDomainCopyWith<$Res> {
  factory $SaveProductModelDomainCopyWith(SaveProductModelDomain value,
          $Res Function(SaveProductModelDomain) then) =
      _$SaveProductModelDomainCopyWithImpl<$Res, SaveProductModelDomain>;
  @useResult
  $Res call(
      {@HiveField(0) String image,
      @HiveField(1) String name,
      @HiveField(2) int count,
      @HiveField(3) int price,
      @HiveField(4) bool isSelected});
}

/// @nodoc
class _$SaveProductModelDomainCopyWithImpl<$Res,
        $Val extends SaveProductModelDomain>
    implements $SaveProductModelDomainCopyWith<$Res> {
  _$SaveProductModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? count = null,
    Object? price = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveProductModelDomainCopyWith<$Res>
    implements $SaveProductModelDomainCopyWith<$Res> {
  factory _$$_SaveProductModelDomainCopyWith(_$_SaveProductModelDomain value,
          $Res Function(_$_SaveProductModelDomain) then) =
      __$$_SaveProductModelDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String image,
      @HiveField(1) String name,
      @HiveField(2) int count,
      @HiveField(3) int price,
      @HiveField(4) bool isSelected});
}

/// @nodoc
class __$$_SaveProductModelDomainCopyWithImpl<$Res>
    extends _$SaveProductModelDomainCopyWithImpl<$Res,
        _$_SaveProductModelDomain>
    implements _$$_SaveProductModelDomainCopyWith<$Res> {
  __$$_SaveProductModelDomainCopyWithImpl(_$_SaveProductModelDomain _value,
      $Res Function(_$_SaveProductModelDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? count = null,
    Object? price = null,
    Object? isSelected = null,
  }) {
    return _then(_$_SaveProductModelDomain(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SaveProductModelDomain implements _SaveProductModelDomain {
  const _$_SaveProductModelDomain(
      {@HiveField(0) required this.image,
      @HiveField(1) required this.name,
      @HiveField(2) required this.count,
      @HiveField(3) required this.price,
      @HiveField(4) required this.isSelected});

  @override
  @HiveField(0)
  final String image;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final int count;
  @override
  @HiveField(3)
  final int price;
  @override
  @HiveField(4)
  final bool isSelected;

  @override
  String toString() {
    return 'SaveProductModelDomain(image: $image, name: $name, count: $count, price: $price, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveProductModelDomain &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, image, name, count, price, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveProductModelDomainCopyWith<_$_SaveProductModelDomain> get copyWith =>
      __$$_SaveProductModelDomainCopyWithImpl<_$_SaveProductModelDomain>(
          this, _$identity);
}

abstract class _SaveProductModelDomain implements SaveProductModelDomain {
  const factory _SaveProductModelDomain(
          {@HiveField(0) required final String image,
          @HiveField(1) required final String name,
          @HiveField(2) required final int count,
          @HiveField(3) required final int price,
          @HiveField(4) required final bool isSelected}) =
      _$_SaveProductModelDomain;

  @override
  @HiveField(0)
  String get image;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  int get count;
  @override
  @HiveField(3)
  int get price;
  @override
  @HiveField(4)
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_SaveProductModelDomainCopyWith<_$_SaveProductModelDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
