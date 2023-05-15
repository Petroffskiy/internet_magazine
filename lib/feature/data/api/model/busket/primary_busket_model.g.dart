// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_busket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Success _$$SuccessFromJson(Map<String, dynamic> json) => _$Success(
      (json['listProduct'] as List<dynamic>)
          .map((e) => SaveProductBody.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessToJson(_$Success instance) => <String, dynamic>{
      'listProduct': instance.listProduct,
      'runtimeType': instance.$type,
    };

_$Error _$$ErrorFromJson(Map<String, dynamic> json) => _$Error(
      ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorToJson(_$Error instance) => <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
