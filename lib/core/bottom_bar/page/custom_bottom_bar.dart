import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:internet_magazine/core/bottom_bar/model/navigation_model.dart';
import 'package:internet_magazine/core/bottom_bar/page/custom_app_bar.dart';
import 'package:internet_magazine/core/role/inherit_role.dart';
import 'package:internet_magazine/core/role/user_role.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';

import "dart:developer" as dev;

@RoutePage()
class CustomBottomBarPage extends StatelessWidget {
  const CustomBottomBarPage({
    super.key,
    required this.role,
  });
  final UserRole role;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainCardRoute(),
        BusketRoute(),
        PersonalEmptyRoute(),
        GodRoute(),
      ],
      appBarBuilder: (context, tabsRouter) => CustomAppBar(
        title: NavigationModel.labels[tabsRouter.activeIndex],
      ),
      extendBody: false,
      bottomNavigationBuilder: ((context, tabsRouter) {
        dev.log(
            name: "custom bottom",
            "role: ${role.toString()} level: ${role.level}");
        return InheritedRole(
          role: role,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: role == UserRole.admin
                  ? NavigationModel.bottomNavigationItemsListAdmin
                  : NavigationModel.bottomNavigationItemsListUser,
              selectedFontSize: 8,
              unselectedFontSize: 8,
              iconSize: 18,
            ),
          ),
        );
      }),
    );
  }
}
