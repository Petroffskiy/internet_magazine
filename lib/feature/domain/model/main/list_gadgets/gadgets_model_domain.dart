import 'package:freezed_annotation/freezed_annotation.dart';

part 'gadgets_model_domain.freezed.dart';

@freezed
class GadgetsModelDomain with _$GadgetsModelDomain {
  const factory GadgetsModelDomain({
    required String id,
    required String image,
    required String name,
  }) = _GadgetsModel;
}
