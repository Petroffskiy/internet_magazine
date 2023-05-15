import 'package:internet_magazine/feature/data/repository/i_auth_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_personal_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_authentication_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_busket_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_personal_repository.dart';
import 'package:internet_magazine/feature/internal/dependencies/api_model.dart';

class RepositoryModel {
  static IAuthRepositoryDomain? _authRepository;
  static IMainRepositoryDomain? _iMainRepository;
  static IPersonalRepositoryDomain? _iPersonalRepository;
  static IBusketRepositoryDomain? _iBusketRepository;

  static IAuthRepositoryDomain? authRepositoryDomain() {
    _authRepository ??= IAuthRepository(
      ApiModel.apiUtil()!,
    );
    return _authRepository;
  }

  static IMainRepositoryDomain? iMainRepository() {
    _iMainRepository ??= IMainRepository(
      ApiModel.apiUtil()!,
    );
    return _iMainRepository;
  }

  static IPersonalRepositoryDomain? iPersonalRepository() {
    _iPersonalRepository ??= IPersonalRepository(
      ApiModel.apiUtil()!,
    );
    return _iPersonalRepository;
  }
}
