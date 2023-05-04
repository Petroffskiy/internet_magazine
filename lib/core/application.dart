import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/core/routers/app_router.dart';

class Application extends StatelessWidget {

  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
    // return MultiBlocProvider(
    //   providers: [],
    //   child: MaterialApp.router(
    //     routerConfig: appRouter.config(),
    //     debugShowCheckedModeBanner: false,
    //   ),
    // );
  }
}
