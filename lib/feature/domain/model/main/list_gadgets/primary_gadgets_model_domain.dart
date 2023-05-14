import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';

part 'primary_gadgets_model_domain.freezed.dart';

@freezed
class PrimaryGadgetsModelDomain with _$PrimaryGadgetsModelDomain {
  const factory PrimaryGadgetsModelDomain.success(
      List<GadgetsModelDomain> listGadgets) = Success;
      const factory PrimaryGadgetsModelDomain.error(
      ErrorModelDomain error) = Error;
}
