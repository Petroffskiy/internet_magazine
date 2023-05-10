import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';

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
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            context.router.replace(AuthorizationRoute());
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
