import 'package:get_it/get_it.dart';
import 'package:internet_magazine/core/bottom_bar/bloc/app_bar/app_bar_bloc.dart';
import 'package:internet_magazine/core/bottom_bar/bloc/bottom/bottom_bloc.dart';
import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/data/api/service/connection_service.dart';
import 'package:internet_magazine/feature/data/repository/i_auth_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_busket_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_god_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/data/repository/i_personal_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_authentication_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_busket_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_god_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_main_repository.dart';
import 'package:internet_magazine/feature/domain/repository/i_personal_repository.dart';
import 'package:internet_magazine/feature/presentation/auth/authenticate/bloc/authentication_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/authorization/bloc/authorization_bloc.dart';
import 'package:internet_magazine/feature/presentation/basket/bloc/busket/busket_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/parameter_product_bloc/parameter_product_bloc.dart';

import 'package:internet_magazine/feature/presentation/god_mode/bloc/change_bloc/change_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/god_data/god_data_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/god_product/god_product_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/image_picker/image_picker_bloc.dart';
import 'package:internet_magazine/feature/presentation/god_mode/bloc/select_category/select_category_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/main_card/main_card_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/save_busket/save_busket_bloc.dart';
import 'package:internet_magazine/feature/presentation/personal/bloc/personal_bloc/personal_bloc.dart';

final inject = GetIt.instance;

void init() {
  inject.registerFactory(() => AuthenticationBloc(inject()));

  inject.registerLazySingleton<IAuthRepositoryDomain>(
      () => IAuthRepository(inject()));

  inject.registerLazySingleton(() => IAuthRepository(inject()));

  inject.registerFactory(() => AuthorizationBloc(inject()));

  inject.registerFactory(() => MainCardBloc(inject()));
  inject.registerLazySingleton<IMainRepositoryDomain>(
      () => IMainRepository(inject()));

  inject.registerLazySingleton(() => IMainRepository(inject()));
  inject.registerLazySingleton(() => IPersonalRepository(inject()));
  inject.registerLazySingleton<IPersonalRepositoryDomain>(
      () => IPersonalRepository(inject()));

  inject.registerFactory(() => PersonalBloc(inject()));
  inject.registerLazySingleton(() => ConnectionService());

  inject.registerLazySingleton<ApiUtil>(() => ApiUtil(inject()));

  inject.registerLazySingleton(() => IBusketRepository(inject()));
  inject.registerLazySingleton<IBusketRepositoryDomain>(
      () => IBusketRepository(inject()));

  inject.registerFactory(() => BusketBloc(inject()));

  inject.registerFactory(() => GodDataBloc(inject()));
  inject.registerLazySingleton(() => IGodRepository(inject()));
  inject.registerLazySingleton<IGodRepositoryDomain>(
      () => IGodRepository(inject()));
  inject.registerFactory(() => GodProductBloc(inject()));

  /// other blocs
  inject.registerFactory(() => SaveBusketBloc(inject()));

  inject.registerFactory(() => AppBarBloc());

  inject.registerFactory(() => BottomBloc());

  inject.registerFactory(() => ChangeBloc());
  inject.registerFactory(() => CategoryBloc());
  inject.registerFactory(() => ImagePickerBloc());
  inject.registerFactory(() => ParameterProductBloc());

  
}
