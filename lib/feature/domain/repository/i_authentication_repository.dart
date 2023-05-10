import 'package:internet_magazine/feature/domain/model/user_data/primary_user_model_domain.dart';

abstract class IAuthRepositoryDomain {
  Future<PrimaryUserModelDomain> authentication({
    required String email,
    required String password,
  });
  Future<PrimaryUserModelDomain> authorization({
    required String email,
    required String password,
    required String name,
  });

  Future<bool> checkUser({
    required String email,
    required String password,
  });
}
