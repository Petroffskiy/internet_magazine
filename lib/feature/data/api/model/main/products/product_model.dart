import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/god/create/parameter_model.dart';

import 'dart:developer' as dev;

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
@JsonSerializable()
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String name,
    required String category,
    required int price,
    required String image,
    required String description,
    required int count,
    required String id,
    required bool selected,
    required ParameterModel parameters,
  }) = _ProductModel;

  // factory ProductModel.fromJson(map) {
  //   dev.log(
  //       name: "product model",
  //       "selected: ${map['selected']} id: ${map['name']}");
  //   return ProductModel(
  //     name: map['name'],
  //     category: map['category'],
  //     price: map['price'],
  //     image: map['image'],
  //     description: map['description'],
  //     count: map['count'],
  //     id: map['id'],
  //     selected: map['selected'],
  //     parameters: ParameterModel.fromJson(map["parameters"]),
  //     // parameters: List.generate(
  //     //   map['parameters'],
  //     //   (index) => ParameterModel.fromJson(
  //     //     map['parameters'][index],
  //     //   ),
  //     // ),
  //   );
  // }
  factory ProductModel.fromJson(Map<String, dynamic> map) =>
      _$ProductModelFromJson(map);
}
