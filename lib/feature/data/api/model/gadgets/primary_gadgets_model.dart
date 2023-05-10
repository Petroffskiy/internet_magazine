import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/gadgets/gadgets_model.dart';

part 'primary_gadgets_model.freezed.dart';

@freezed
class PrimaryGadgetsModel with _$PrimaryGadgetsModel {
  const factory PrimaryGadgetsModel.success(List<GadgetsModel> listGadgets) =
      Success;
  const factory PrimaryGadgetsModel.error(ErrorModel error) = Error;
}
