import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/presentation/main_cards/bloc/save_busket/save_busket_bloc.dart';
import 'package:internet_magazine/core/injection.dart' as inj;

@RoutePage()
class MainCardEmptyPage extends StatelessWidget {
  const MainCardEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => inj.inject<SaveBusketBloc>()),
      ],
      child: const AutoRouter(),
    );
  }
}
