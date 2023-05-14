import 'package:internet_magazine/feature/domain/model/personal/primary_update_password_domain.dart';

abstract class IPersonalRepositoryDomain {
  Future<PrimaryUpdatePasswordDomain> updatePassword(
      {required String password});
}
