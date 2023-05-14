import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String name,
    required String category,
    required int price,
    required String image,
    required String description,
    required int count,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> map) =>
      _$ProductModelFromJson(map);
}
