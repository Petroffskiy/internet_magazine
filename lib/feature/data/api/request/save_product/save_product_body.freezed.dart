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

SaveProductBody _$SaveProductBodyFromJson(Map<String, dynamic> json) {
  return _SaveProductBody.fromJson(json);
}

/// @nodoc
mixin _$SaveProductBody {
  String? get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ParameterModel get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      bool selected,
      String category,
      String description,
      ParameterModel parameters});

  $ParameterModelCopyWith<$Res> get parameters;
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
    Object? category = null,
    Object? description = null,
    Object? parameters = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ParameterModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterModelCopyWith<$Res> get parameters {
    return $ParameterModelCopyWith<$Res>(_value.parameters, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
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
      bool selected,
      String category,
      String description,
      ParameterModel parameters});

  @override
  $ParameterModelCopyWith<$Res> get parameters;
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
    Object? category = null,
    Object? description = null,
    Object? parameters = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ParameterModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaveProductBody implements _SaveProductBody {
  const _$_SaveProductBody(
      {required this.id,
      required this.image,
      required this.name,
      required this.count,
      required this.price,
      required this.selected,
      required this.category,
      required this.description,
      required this.parameters});

  factory _$_SaveProductBody.fromJson(Map<String, dynamic> json) =>
      _$$_SaveProductBodyFromJson(json);

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
  final String category;
  @override
  final String description;
  @override
  final ParameterModel parameters;

  @override
  String toString() {
    return 'SaveProductBody(id: $id, image: $image, name: $name, count: $count, price: $price, selected: $selected, category: $category, description: $description, parameters: $parameters)';
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
                other.selected == selected) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, count, price,
      selected, category, description, parameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveProductBodyCopyWith<_$_SaveProductBody> get copyWith =>
      __$$_SaveProductBodyCopyWithImpl<_$_SaveProductBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveProductBodyToJson(
      this,
    );
  }
}

abstract class _SaveProductBody implements SaveProductBody {
  const factory _SaveProductBody(
      {required final String? id,
      required final String image,
      required final String name,
      required final int count,
      required final int price,
      required final bool selected,
      required final String category,
      required final String description,
      required final ParameterModel parameters}) = _$_SaveProductBody;

  factory _SaveProductBody.fromJson(Map<String, dynamic> json) =
      _$_SaveProductBody.fromJson;

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
  String get category;
  @override
  String get description;
  @override
  ParameterModel get parameters;
  @override
  @JsonKey(ignore: true)
  _$$_SaveProductBodyCopyWith<_$_SaveProductBody> get copyWith =>
      throw _privateConstructorUsedError;
}
