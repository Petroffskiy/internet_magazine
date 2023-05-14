import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/assets/colors/colors.dart';
import 'package:internet_magazine/core/bottom_bar/bloc/app_bar_bloc.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';
import 'package:internet_magazine/feature/presentation/widgets/widget_stack_bar.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: AutoRouter.of(context).canPop(),
      iconTheme: Theme.of(context).iconTheme,
      leading: Visibility(
        visible: AutoRouter.of(context).canPop(),
        child: IconButton(
            onPressed: () {
              AutoRouter.of(context).popTop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: grey,
            )),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
        ),
      ),
      actions: [
        BlocListener<AppBarBloc, AppBarState>(
          listener: (context, state) {
            if (state is AppBarDownloaded) {
              context.router.replace(const AuthEmptyRoute());
            }
          },
          child: IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: () {
              context.read<AppBarBloc>().add(ExitAccount());
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
