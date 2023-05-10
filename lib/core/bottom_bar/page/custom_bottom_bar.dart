import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:internet_magazine/core/bottom_bar/model/navigation_model.dart';
import 'package:internet_magazine/core/bottom_bar/page/custom_app_bar.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';

@RoutePage()
class CustomBottomBarPage extends StatelessWidget {
  const CustomBottomBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainCardRoute(),
        BusketRoute(),
        PersonalRoute(),
      ],
      appBarBuilder: (context, tabsRouter) => CustomAppBar(
        title: NavigationModel.labels[tabsRouter.activeIndex],
      ),
      extendBody: false,
      bottomNavigationBuilder: ((context, tabsRouter) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: NavigationModel.bottomNavigationItemsList,
            selectedFontSize: 8,
            unselectedFontSize: 8,
            iconSize: 18,
          ),
        );
      }),
    );
  }
}
