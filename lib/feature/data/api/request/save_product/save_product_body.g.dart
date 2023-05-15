// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_product_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveProductBody _$$_SaveProductBodyFromJson(Map<String, dynamic> json) =>
    _$_SaveProductBody(
      image: json['image'] as String,
      name: json['name'] as String,
      count: json['count'] as int,
      price: json['price'] as int,
      selected: json['selected'] as bool,
    );

Map<String, dynamic> _$$_SaveProductBodyToJson(_$_SaveProductBody instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'count': instance.count,
      'price': instance.price,
      'selected': instance.selected,
    };
