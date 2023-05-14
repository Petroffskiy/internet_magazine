import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/main/gadgets/primary_gadgets_model.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/gadgets_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/main/list_gadgets/primary_gadgets_model_domain.dart';

class GadgetsModelMapper {
  static PrimaryGadgetsModelDomain fromJson(PrimaryGadgetsModel listGadgets) {
    return listGadgets.maybeWhen(
      success: (success) {
        return PrimaryGadgetsModelDomain.success(
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
        return PrimaryGadgetsModelDomain.error(
          ErrorModelDomain(
            message: error.message,
            code: error.code,
          ),
        );
      },
      orElse: () {
        return const PrimaryGadgetsModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
