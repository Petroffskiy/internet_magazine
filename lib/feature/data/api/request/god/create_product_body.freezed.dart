// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateProductBody {
  String get category => throw _privateConstructorUsedError;
  int get cout => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<ParameterRequestModel> get parameters =>
      throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProductBodyCopyWith<CreateProductBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductBodyCopyWith<$Res> {
  factory $CreateProductBodyCopyWith(
          CreateProductBody value, $Res Function(CreateProductBody) then) =
      _$CreateProductBodyCopyWithImpl<$Res, CreateProductBody>;
  @useResult
  $Res call(
      {String category,
      int cout,
      String name,
      String image,
      List<ParameterRequestModel> parameters,
      int price});
}

/// @nodoc
class _$CreateProductBodyCopyWithImpl<$Res, $Val extends CreateProductBody>
    implements $CreateProductBodyCopyWith<$Res> {
  _$CreateProductBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? cout = null,
    Object? name = null,
    Object? image = null,
    Object? parameters = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cout: null == cout
          ? _value.cout
          : cout // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<ParameterRequestModel>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateProductBodyCopyWith<$Res>
    implements $CreateProductBodyCopyWith<$Res> {
  factory _$$_CreateProductBodyCopyWith(_$_CreateProductBody value,
          $Res Function(_$_CreateProductBody) then) =
      __$$_CreateProductBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      int cout,
      String name,
      String image,
      List<ParameterRequestModel> parameters,
      int price});
}

/// @nodoc
class __$$_CreateProductBodyCopyWithImpl<$Res>
    extends _$CreateProductBodyCopyWithImpl<$Res, _$_CreateProductBody>
    implements _$$_CreateProductBodyCopyWith<$Res> {
  __$$_CreateProductBodyCopyWithImpl(
      _$_CreateProductBody _value, $Res Function(_$_CreateProductBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? cout = null,
    Object? name = null,
    Object? image = null,
    Object? parameters = null,
    Object? price = null,
  }) {
    return _then(_$_CreateProductBody(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cout: null == cout
          ? _value.cout
          : cout // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<ParameterRequestModel>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateProductBody implements _CreateProductBody {
  const _$_CreateProductBody(
      {required this.category,
      required this.cout,
      required this.name,
      required this.image,
      required final List<ParameterRequestModel> parameters,
      required this.price})
      : _parameters = parameters;

  @override
  final String category;
  @override
  final int cout;
  @override
  final String name;
  @override
  final String image;
  final List<ParameterRequestModel> _parameters;
  @override
  List<ParameterRequestModel> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  @override
  final int price;

  @override
  String toString() {
    return 'CreateProductBody(category: $category, cout: $cout, name: $name, image: $image, parameters: $parameters, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateProductBody &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.cout, cout) || other.cout == cout) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, cout, name, image,
      const DeepCollectionEquality().hash(_parameters), price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateProductBodyCopyWith<_$_CreateProductBody> get copyWith =>
      __$$_CreateProductBodyCopyWithImpl<_$_CreateProductBody>(
          this, _$identity);
          
            @override
           Map<String, dynamic> toJson() {
     final parametersJson = parameters.map((parameter) => parameter.toJson()).toList();
    return {
      'category': category,
      "count": cout,
      "price": price,
      "name": name,
      "image": image,
      "parameters": parametersJson,
    };
  }
}

abstract class _CreateProductBody implements CreateProductBody {
  const factory _CreateProductBody(
      {required final String category,
      required final int cout,
      required final String name,
      required final String image,
      required final List<ParameterRequestModel> parameters,
      required final int price}) = _$_CreateProductBody;

  @override
  String get category;
  @override
  int get cout;
  @override
  String get name;
  @override
  String get image;
  @override
  List<ParameterRequestModel> get parameters;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_CreateProductBodyCopyWith<_$_CreateProductBody> get copyWith =>
      throw _privateConstructorUsedError;
}
