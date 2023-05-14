// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      name: json['name'] as String,
      category: json['category'] as String,
      price: json['price'] as int,
      image: json['image'] as String,
      description: json['description'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'count': instance.count,
    };
