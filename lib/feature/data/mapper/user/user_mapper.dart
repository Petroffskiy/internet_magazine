import 'package:internet_magazine/feature/data/api/model/user/primary_user_model.dart';
import 'package:internet_magazine/feature/domain/model/error_domain/error_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/primary_user_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

import '../../../../assets/project_strings.dart';

class UserMapper {
  static PrimaryUserModelDomain fromJson(PrimaryUserModel user) {
    return user.maybeWhen(
      success: (success) {
        return PrimaryUserModelDomain.success(
          UserModelDomain(
            id: success.id,
            name: success.name,
            login: success.login,
            password: success.password,
            role: success.role,
          ),
        );
      },
      error: (error) {
        return PrimaryUserModelDomain.error(
          ErrorModelDomain(
            message: error.message,
            code: error.code,
          ),
        );
      },
      orElse: () {
        return const PrimaryUserModelDomain.error(
          ErrorModelDomain(
            message: errorMessageMapper,
            code: errorCodeMapper,
          ),
        );
      },
    );
  }
}
