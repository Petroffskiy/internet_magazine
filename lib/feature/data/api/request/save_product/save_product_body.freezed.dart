// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_product_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveProductBody {
  String? get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveProductBodyCopyWith<SaveProductBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveProductBodyCopyWith<$Res> {
  factory $SaveProductBodyCopyWith(
          SaveProductBody value, $Res Function(SaveProductBody) then) =
      _$SaveProductBodyCopyWithImpl<$Res, SaveProductBody>;
  @useResult
  $Res call(
      {String? id,
      String image,
      String name,
      int count,
      int price,
      bool selected});
}

/// @nodoc
class _$SaveProductBodyCopyWithImpl<$Res, $Val extends SaveProductBody>
    implements $SaveProductBodyCopyWith<$Res> {
  _$SaveProductBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = null,
    Object? name = null,
    Object? count = null,
    Object? price = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveProductBodyCopyWith<$Res>
    implements $SaveProductBodyCopyWith<$Res> {
  factory _$$_SaveProductBodyCopyWith(
          _$_SaveProductBody value, $Res Function(_$_SaveProductBody) then) =
      __$$_SaveProductBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String image,
      String name,
      int count,
      int price,
      bool selected});
}

/// @nodoc
class __$$_SaveProductBodyCopyWithImpl<$Res>
    extends _$SaveProductBodyCopyWithImpl<$Res, _$_SaveProductBody>
    implements _$$_SaveProductBodyCopyWith<$Res> {
  __$$_SaveProductBodyCopyWithImpl(
      _$_SaveProductBody _value, $Res Function(_$_SaveProductBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = null,
    Object? name = null,
    Object? count = null,
    Object? price = null,
    Object? selected = null,
  }) {
    return _then(_$_SaveProductBody(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SaveProductBody implements _SaveProductBody {
  const _$_SaveProductBody(
      {required this.id,
      required this.image,
      required this.name,
      required this.count,
      required this.price,
      required this.selected});

  @override
  final String? id;
  @override
  final String image;
  @override
  final String name;
  @override
  final int count;
  @override
  final int price;
  @override
  final bool selected;

  @override
  String toString() {
    return 'SaveProductBody(id: $id, image: $image, name: $name, count: $count, price: $price, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveProductBody &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, name, count, price, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveProductBodyCopyWith<_$_SaveProductBody> get copyWith =>
      __$$_SaveProductBodyCopyWithImpl<_$_SaveProductBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'count': count,
      'price': price,
      'selected': selected
    };
  }
}

abstract class _SaveProductBody implements SaveProductBody {
  const factory _SaveProductBody(
      {required final String? id,
      required final String image,
      required final String name,
      required final int count,
      required final int price,
      required final bool selected}) = _$_SaveProductBody;

  @override
  String? get id;
  @override
  String get image;
  @override
  String get name;
  @override
  int get count;
  @override
  int get price;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_SaveProductBodyCopyWith<_$_SaveProductBody> get copyWith =>
      throw _privateConstructorUsedError;
}
