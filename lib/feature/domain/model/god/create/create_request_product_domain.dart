import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/god/create/parameters_request.dart';

part 'create_request_product_domain.freezed.dart';

@freezed
class CreateRequestProductModelDomain with _$CreateRequestProductModelDomain {
  const factory CreateRequestProductModelDomain({
    required String idCategory,
    required String count,
    required String name,
    required String image,
    required List<ParametersRequestModelDomain> parameters,
  }) = _CreateRequestProductModelDomain;
}
