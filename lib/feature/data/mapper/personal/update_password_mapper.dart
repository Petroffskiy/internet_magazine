import 'package:internet_magazine/assets/project_strings.dart';
import 'package:internet_magazine/feature/data/api/model/personal/primary_update_password.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/personal/primary_update_password_domain.dart';

class UpdatePasswordMapper {
  static PrimaryUpdatePasswordDomain fromJson(PrimaryUpdatePassword password) {
    return password.maybeWhen(
      success: (success) {
        return PrimaryUpdatePasswordDomain.success(success);
      },
      error: (error) {
        return PrimaryUpdatePasswordDomain.error(
          ErrorModelDomain(
            code: error.code,
            message: error.message,
          ),
        );
      },
      orElse: () {
        return const PrimaryUpdatePasswordDomain.error(
          ErrorModelDomain(message: errorMessageMapper, code: errorCodeMapper),
        );
      },
    );
  }
}
