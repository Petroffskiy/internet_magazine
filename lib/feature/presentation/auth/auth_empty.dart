import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/password_visible/password_visible_bloc.dart';
import 'package:internet_magazine/feature/presentation/auth/bloc/validate/validate_bloc.dart';

@RoutePage()
class AuthEmptyPage extends StatelessWidget {
  const AuthEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => ValidateBloc()),
        BlocProvider(create: (BuildContext context) => PasswordVisibleBloc()),
      ],
      child: const AutoRouter(),
    );
  }
}
