import 'package:internet_magazine/feature/data/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_authentication_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/internal/dependencies/api_model.dart';

import '../../data/repository/i_auth_repository.dart';

class RepositoryModel {
  static IAuthRepositoryDomain? _authRepositoryDomain;
  static IMainRepositoryDomain? _iMainRepository;

  static IAuthRepositoryDomain? authRepositoryDomain() {
    _authRepositoryDomain ??= IAuthRepository(
      ApiModel.apiUtil()!,
    );
    return _authRepositoryDomain;
  }

  static IMainRepositoryDomain? iMainRepository() {
    _iMainRepository ??= IMainRepository(
      ApiModel.apiUtil()!,
    );
    return _iMainRepository;
  }
}
