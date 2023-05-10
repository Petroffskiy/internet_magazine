// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:internet_magazine/core/bottom_bar/page/custom_bottom_bar.dart'
    as _i5;
import 'package:internet_magazine/feature/presentation/auth/auth_empty.dart'
    as _i3;
import 'package:internet_magazine/feature/presentation/auth/authenticate/page/authentication_page.dart'
    as _i1;
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart'
    as _i2;
import 'package:internet_magazine/feature/presentation/basket/page/basket_page.dart'
    as _i6;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_page.dart'
    as _i4;
import 'package:internet_magazine/feature/presentation/personal/page/personal_page.dart'
    as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super();

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AuthenticationPage(key: args.key),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>(
          orElse: () => const AuthorizationRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthorizationPage(key: args.key),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthEmptyPage(),
      );
    },
    MainCardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainCardPage(),
      );
    },
    CustomBottomBarRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CustomBottomBarPage(),
      );
    },
    BusketRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BusketPage(),
      );
    },
    PersonalRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PersonalPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticationPage]
class AuthenticationRoute extends _i8.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i8.PageInfo<AuthenticationRouteArgs> page =
      _i8.PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthorizationPage]
class AuthorizationRoute extends _i8.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i8.PageInfo<AuthorizationRouteArgs> page =
      _i8.PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthEmptyPage]
class AuthEmptyRoute extends _i8.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainCardPage]
class MainCardRoute extends _i8.PageRouteInfo<void> {
  const MainCardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CustomBottomBarPage]
class CustomBottomBarRoute extends _i8.PageRouteInfo<void> {
  const CustomBottomBarRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CustomBottomBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomBottomBarRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BusketPage]
class BusketRoute extends _i8.PageRouteInfo<void> {
  const BusketRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BusketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BusketRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PersonalPage]
class PersonalRoute extends _i8.PageRouteInfo<void> {
  const PersonalRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PersonalRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
