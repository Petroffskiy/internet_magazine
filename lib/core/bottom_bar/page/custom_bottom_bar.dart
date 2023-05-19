import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_magazine/core/bottom_bar/bloc/bottom/bottom_bloc.dart';
import 'package:internet_magazine/core/bottom_bar/model/navigation_model.dart';
import 'package:internet_magazine/core/bottom_bar/page/custom_app_bar.dart';

import 'package:internet_magazine/core/role/user_role.dart';
import 'package:internet_magazine/core/routers/app_router.gr.dart';

import "dart:developer" as dev;

@RoutePage()
class CustomBottomBarPage extends StatelessWidget {
  CustomBottomBarPage({
    Key? key,
  }) : super(key: key ?? UniqueKey());

  bool isUpdate = false;
  @override
  Widget build(BuildContext context) {
    UserRole role = checkHotReload(context: context);
    return AutoTabsScaffold(
      routes: const [
        MainCardRoute(),
        BusketRoute(),
        PersonalEmptyRoute(),
        GodEmptyRoute(),
      ],
      appBarBuilder: (context, tabsRouter) => CustomAppBar(
        title: NavigationModel.labels[tabsRouter.activeIndex],
      ),
      extendBody: false,
      bottomNavigationBuilder: ((context, tabsRouter) {
        return BlocListener<BottomBloc, BottomState>(
          listener: (context, state) {
            if (state is BottomDownload) {
              role = state.role;
              dev.log(name: "bottom bar", role.toString());
            } else if (state is BottomError) {
              context.router.replace(const AuthEmptyRoute());
            }
          },
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

  UserRole checkHotReload({required BuildContext context}) {
    if (isUpdate) {
      context.read<BottomBloc>().add(BottomData());
      return context.read<BottomBloc>().state.role;
    } else {
      return context.read<BottomBloc>().state.role;
    }
  }
}
