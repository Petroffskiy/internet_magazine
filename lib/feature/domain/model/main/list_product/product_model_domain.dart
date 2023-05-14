import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model_domain.freezed.dart';

@freezed
class ProductModelDomain with _$ProductModelDomain {
  const factory ProductModelDomain({
    required String category,
    required String name,
    required int price,
    required String image,
    required String description,
    required int count,
  }) = _ProductModelDomain;
}
