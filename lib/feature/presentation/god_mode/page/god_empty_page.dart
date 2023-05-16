import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:internet_magazine/core/injection.dart' as inj;
import 'package:internet_magazine/feature/presentation/god_mode/bloc/change_bloc/change_bloc.dart';

@RoutePage()
class GodEmptyPage extends StatelessWidget {
  const GodEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => inj.inject<ChangeBloc>())
      ],
      child: const AutoRouter(),
    );
  }
}
