import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/god/create/parameter_model.dart';
part 'save_product_body.freezed.dart';
part 'save_product_body.g.dart';

@freezed
class SaveProductBody with _$SaveProductBody {
  const factory SaveProductBody({
    required String? id,
    required String image,
    required String name,
    required int count,
    required int price,
    required bool selected,
    required String category,
    required String description,
    required ParameterModel parameters,
  }) = _SaveProductBody;

  // factory SaveProductBody.fromJson(map, String key) {
  //   return SaveProductBody(
  //     id: key,
  //     image: map['image'],
  //     name: map['name'],
  //     count: map['count'],
  //     price: map['price'],
  //     selected: map['selected'],
  //     category: map['category'],
  //     description: map['description'],
  //     // parameters: List.generate(
  //     //   map['parameters'],
  //     //   (index) => ParameterModel.fromJson(
  //     //     map["parameters"][index],
  //     //   ),

  //     // ));
  //     parameters: ParameterModel.fromJson(map["parameters"]),
  //   );
  // }
  factory SaveProductBody.fromJson(Map<String, dynamic> map) =>
      _$SaveProductBodyFromJson(map);
  // Map<String, dynamic> toJson() => _$SaveProductBodyToJson(this);
  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'image': image,
  //     'name': name,
  //     'count': count,
  //     'price': price,
  //     'selected': selected,
  //     "parameters": List<ParameterModel>,
  //     'category': category,
  //   };
  // }
}
