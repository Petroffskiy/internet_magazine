import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_product_body.freezed.dart';
part 'save_product_body.g.dart';

@freezed
class SaveProductBody with _$SaveProductBody {
  const factory SaveProductBody({
    required String image,
    required String name,
    required int count,
    required int price,
    required bool selected,
  }) = _SaveProductBody;

  factory SaveProductBody.fromJson(Map<String, dynamic> map) =>
      _$SaveProductBodyFromJson(map);
}
