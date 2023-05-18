// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'count': instance.count,
      'id': instance.id,
      'selected': instance.selected,
      'parameters': instance.parameters,
    };

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      name: json['name'] as String,
      category: json['category'] as String,
      price: json['price'] as int,
      image: json['image'] as String,
      description: json['description'] as String,
      count: json['count'] as int,
      id: json['id'] as String,
      selected: json['selected'] as bool,
      parameters:
          ParameterModel.fromJson(json['parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'count': instance.count,
      'id': instance.id,
      'selected': instance.selected,
      'parameters': instance.parameters,
    };
