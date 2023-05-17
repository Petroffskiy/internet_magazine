// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_god_products_model_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrimaryGodProductsModelDomain {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModelDomain> listProduct) success,
    required TResult Function(ErrorModelDomain error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModelDomain> listProduct)? success,
    TResult? Function(ErrorModelDomain error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModelDomain> listProduct)? success,
    TResult Function(ErrorModelDomain error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryGodProductsModelDomainCopyWith<$Res> {
  factory $PrimaryGodProductsModelDomainCopyWith(
          PrimaryGodProductsModelDomain value,
          $Res Function(PrimaryGodProductsModelDomain) then) =
      _$PrimaryGodProductsModelDomainCopyWithImpl<$Res,
          PrimaryGodProductsModelDomain>;
}

/// @nodoc
class _$PrimaryGodProductsModelDomainCopyWithImpl<$Res,
        $Val extends PrimaryGodProductsModelDomain>
    implements $PrimaryGodProductsModelDomainCopyWith<$Res> {
  _$PrimaryGodProductsModelDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModelDomain> listProduct});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$PrimaryGodProductsModelDomainCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listProduct = null,
  }) {
    return _then(_$Success(
      null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModelDomain>,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(final List<ProductModelDomain> listProduct)
      : _listProduct = listProduct;

  final List<ProductModelDomain> _listProduct;
  @override
  List<ProductModelDomain> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'PrimaryGodProductsModelDomain.success(listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModelDomain> listProduct) success,
    required TResult Function(ErrorModelDomain error) error,
  }) {
    return success(listProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModelDomain> listProduct)? success,
    TResult? Function(ErrorModelDomain error)? error,
  }) {
    return success?.call(listProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModelDomain> listProduct)? success,
    TResult Function(ErrorModelDomain error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements PrimaryGodProductsModelDomain {
  const factory Success(final List<ProductModelDomain> listProduct) = _$Success;

  List<ProductModelDomain> get listProduct;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModelDomain error});

  $ErrorModelDomainCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$PrimaryGodProductsModelDomainCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModelDomain,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorModelDomainCopyWith<$Res> get error {
    return $ErrorModelDomainCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error);

  @override
  final ErrorModelDomain error;

  @override
  String toString() {
    return 'PrimaryGodProductsModelDomain.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModelDomain> listProduct) success,
    required TResult Function(ErrorModelDomain error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModelDomain> listProduct)? success,
    TResult? Function(ErrorModelDomain error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModelDomain> listProduct)? success,
    TResult Function(ErrorModelDomain error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements PrimaryGodProductsModelDomain {
  const factory Error(final ErrorModelDomain error) = _$Error;

  ErrorModelDomain get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
