import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/request/god/parameter_request_model.dart';
import 'package:internet_magazine/feature/domain/model/god/create/parameters_request.dart';

part 'create_product_body.freezed.dart';
// part 'create_product_body.g.dart';

@freezed
@JsonSerializable(anyMap: true)
class CreateProductBody with _$CreateProductBody {
  const factory CreateProductBody({
    required String category,
    required int cout,
    required String name,
    required String image,
    required List<ParameterRequestModel> parameters,
    required int price,
  }) = _CreateProductBody;

  Map<String, dynamic> toJson() {
     final parametersJson = parameters.map((parameter) => parameter.toJson()).toList();
    return {
      'category': category,
      "count": cout,
      "price": price,
      "name": name,
      "image": image,
      "parameters": parametersJson,
    };
  }
  

  // Map<String, dynamic> toJson() => _$CreateProductBodyToJson(this);
}
