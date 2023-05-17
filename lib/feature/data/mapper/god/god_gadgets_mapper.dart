import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/god/product/primary_god_gadgets_model.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/god/product/primary_god_gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';

class GodGagdetsMapper {
  static PrimaryGodGadgetsModelDomain fromJson(
      PrimaryGodGadgetsModel listGadgets) {
    return listGadgets.maybeWhen(
      success: (success) {
        return PrimaryGodGadgetsModelDomain.success(
          List.generate(
            success.length,
            (index) => GadgetsModelDomain(
              id: success[index].id,
              image: success[index].image,
              name: success[index].name,
            ),
          ),
        );
      },
      error: (error) {
        return PrimaryGodGadgetsModelDomain.error(
          ErrorModelDomain(
            message: error.message,
            code: error.code,
          ),
        );
      },
      orElse: () {
        return const PrimaryGodGadgetsModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
