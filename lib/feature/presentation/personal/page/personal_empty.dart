import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/presentation/personal/bloc/visual_bloc/visible_bloc.dart';

@RoutePage()
class PersonalEmptyPage extends StatelessWidget {
  const PersonalEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => VisibleBloc()),
      ],
      child: const AutoRouter(),
    );
  }
}
