import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_product_body.freezed.dart';

@freezed
class SaveProductBody with _$SaveProductBody {
  const factory SaveProductBody({
    required String? id,
    required String image,
    required String name,
    required int count,
    required int price,
    required bool selected,
  }) = _SaveProductBody;

  factory SaveProductBody.fromJson(map, String key) {
    return SaveProductBody(
        id: key,
        image: map['image'],
        name: map['name'],
        count: map['count'],
        price: map['price'],
        selected: map['selected']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'count': count,
      'price': price,
      'selected': selected,
    };
  }
}
