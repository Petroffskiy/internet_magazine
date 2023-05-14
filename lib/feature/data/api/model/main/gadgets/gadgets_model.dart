import 'package:freezed_annotation/freezed_annotation.dart';

part 'gadgets_model.freezed.dart';
part 'gadgets_model.g.dart';

@freezed
class GadgetsModel with _$GadgetsModel {
  const factory GadgetsModel({
    required String id,
    required String image,
    required String name,
  }) = _GadgetsModel;

  factory GadgetsModel.fromJson(Map<String, dynamic> map) =>
      _$GadgetsModelFromJson(map);
}
