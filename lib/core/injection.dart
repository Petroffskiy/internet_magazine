import 'package:get_it/get_it.dart';
import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/data/api/service/connection_service.dart';
import 'package:internet_magazine/feature/data/repository/i_auth_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_authentication_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/presentation/auth/authenticate/bloc/authentication_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/authorization/bloc/authorization_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/main_card_bloc.dart';

final inject = GetIt.instance;

void init() {
  inject.registerFactory(() => AuthenticationBloc(inject()));

  inject.registerLazySingleton<IAuthRepositoryDomain>(
      () => IAuthRepository(inject()));

  inject.registerLazySingleton(() => ConnectionService());

  inject.registerLazySingleton(() => IAuthRepository(inject()));


  inject.registerFactory(() => AuthorizationBloc(inject()));

  inject.registerFactory(() => MainCardBloc(inject()));
  inject.registerLazySingleton<IMainRepositoryDomain>(() => IMainRepository(inject()));

  inject.registerLazySingleton(() => IMainRepository(inject()));
  inject.registerLazySingleton<ApiUtil>(() => ApiUtil(inject()));

}
