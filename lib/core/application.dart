import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/theme/custom_theme.dart';
import 'package:internet_magazine/core/bottom_bar/bloc/app_bar_bloc.dart';
import 'package:internet_magazine/core/routers/app_router.dart';
import 'package:internet_magazine/feature/presentation/auth/authenticate/bloc/authentication_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/authorization/bloc/authorization_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/main_card/main_card_bloc.dart';
import 'package:internet_magazine/feature/presentation/personal/bloc/personal_bloc/personal_bloc.dart';
import 'package:internet_magazine/feature/presentation/personal/bloc/visual_bloc/visible_bloc.dart';

import 'injection.dart' as inj;

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                inj.inject<AuthenticationBloc>()..add(const CheckHive())),
        BlocProvider(create: (context) => inj.inject<AuthorizationBloc>()),
        BlocProvider(create: (context) => inj.inject<MainCardBloc>()),
        BlocProvider(create: (context) => inj.inject<AppBarBloc>()),
        BlocProvider(create: (context) => inj.inject<PersonalBloc>()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        debugShowCheckedModeBanner: false,
        theme: customTheme(),
      ),
    );
  }
}
