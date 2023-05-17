import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/data/api/model/error/error_model.dart';
import 'package:internet_magazine/feature/data/api/model/main/gadgets/gadgets_model.dart';

part 'primary_god_gadgets_model.freezed.dart';

@freezed
class PrimaryGodGadgetsModel with _$PrimaryGodGadgetsModel {
  const factory PrimaryGodGadgetsModel.success(List<GadgetsModel> listGadgets) =
      Success;
      const factory PrimaryGodGadgetsModel.error(ErrorModel error) =
      Error;
}
