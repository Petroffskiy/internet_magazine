// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:internet_magazine/core/bottom_bar/page/custom_bottom_bar.dart'
    as _i1;
import 'package:internet_magazine/core/role/user_role.dart' as _i12;
import 'package:internet_magazine/feature/presentation/auth/auth_empty.dart'
    as _i4;
import 'package:internet_magazine/feature/presentation/auth/authenticate/page/authentication_page.dart'
    as _i2;
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart'
    as _i3;
import 'package:internet_magazine/feature/presentation/basket/page/basket_page.dart'
    as _i5;
import 'package:internet_magazine/feature/presentation/god_mode/page/god_page.dart'
    as _i8;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_page.dart'
    as _i6;
import 'package:internet_magazine/feature/presentation/personal/page/personal_empty.dart'
    as _i9;
import 'package:internet_magazine/feature/presentation/personal/page/personal_page.dart'
    as _i7;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super();

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    CustomBottomBarRoute.name: (routeData) {
      final args = routeData.argsAs<CustomBottomBarRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CustomBottomBarPage(
          key: args.key,
          role: args.role,
        ),
      );
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthenticationPage(key: args.key),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>(
          orElse: () => const AuthorizationRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthorizationPage(key: args.key),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthEmptyPage(),
      );
    },
    BusketRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BusketPage(),
      );
    },
    MainCardRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainCardPage(),
      );
    },
    PersonalRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalRouteArgs>(
          orElse: () => const PersonalRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.PersonalPage(key: args.key),
      );
    },
    GodRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.GodPage(),
      );
    },
    PersonalEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PersonalEmptyPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomBottomBarPage]
class CustomBottomBarRoute
    extends _i10.PageRouteInfo<CustomBottomBarRouteArgs> {
  CustomBottomBarRoute({
    _i11.Key? key,
    required _i12.UserRole role,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          CustomBottomBarRoute.name,
          args: CustomBottomBarRouteArgs(
            key: key,
            role: role,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomBottomBarRoute';

  static const _i10.PageInfo<CustomBottomBarRouteArgs> page =
      _i10.PageInfo<CustomBottomBarRouteArgs>(name);
}

class CustomBottomBarRouteArgs {
  const CustomBottomBarRouteArgs({
    this.key,
    required this.role,
  });

  final _i11.Key? key;

  final _i12.UserRole role;

  @override
  String toString() {
    return 'CustomBottomBarRouteArgs{key: $key, role: $role}';
  }
}

/// generated route for
/// [_i2.AuthenticationPage]
class AuthenticationRoute extends _i10.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i10.PageInfo<AuthenticationRouteArgs> page =
      _i10.PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthorizationPage]
class AuthorizationRoute extends _i10.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i10.PageInfo<AuthorizationRouteArgs> page =
      _i10.PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AuthEmptyPage]
class AuthEmptyRoute extends _i10.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BusketPage]
class BusketRoute extends _i10.PageRouteInfo<void> {
  const BusketRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BusketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BusketRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainCardPage]
class MainCardRoute extends _i10.PageRouteInfo<void> {
  const MainCardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MainCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PersonalPage]
class PersonalRoute extends _i10.PageRouteInfo<PersonalRouteArgs> {
  PersonalRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          PersonalRoute.name,
          args: PersonalRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PersonalRoute';

  static const _i10.PageInfo<PersonalRouteArgs> page =
      _i10.PageInfo<PersonalRouteArgs>(name);
}

class PersonalRouteArgs {
  const PersonalRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'PersonalRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.GodPage]
class GodRoute extends _i10.PageRouteInfo<void> {
  const GodRoute({List<_i10.PageRouteInfo>? children})
      : super(
          GodRoute.name,
          initialChildren: children,
        );

  static const String name = 'GodRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PersonalEmptyPage]
class PersonalEmptyRoute extends _i10.PageRouteInfo<void> {
  const PersonalEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PersonalEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
