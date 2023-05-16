// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:internet_magazine/core/bottom_bar/page/custom_bottom_bar.dart'
    as _i1;
import 'package:internet_magazine/feature/presentation/auth/auth_empty.dart'
    as _i4;
import 'package:internet_magazine/feature/presentation/auth/authenticate/page/authentication_page.dart'
    as _i2;
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart'
    as _i3;
import 'package:internet_magazine/feature/presentation/basket/page/basket_page.dart'
    as _i5;
import 'package:internet_magazine/feature/presentation/god_mode/page/god_page.dart'
    as _i6;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_empty_page.dart'
    as _i7;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_page.dart'
    as _i8;
import 'package:internet_magazine/feature/presentation/main_cards/page/single_card_page.dart'
    as _i9;
import 'package:internet_magazine/feature/presentation/personal/page/personal_empty.dart'
    as _i10;
import 'package:internet_magazine/feature/presentation/personal/page/personal_page.dart'
    as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey]) : super();

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    CustomBottomBarRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomBottomBarPage(),
      );
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthenticationPage(key: args.key),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>(
          orElse: () => const AuthorizationRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthorizationPage(key: args.key),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthEmptyPage(),
      );
    },
    BusketRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BusketPage(),
      );
    },
    GodRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.GodPage(),
      );
    },
    MainCardEmptyRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainCardEmptyPage(),
      );
    },
    MainCardRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MainCardPage(),
      );
    },
    SingleCardRoute.name: (routeData) {
      final args = routeData.argsAs<SingleCardRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SingleCardPage(
          key: args.key,
          index: args.index,
        ),
      );
    },
    PersonalEmptyRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PersonalEmptyPage(),
      );
    },
    PersonalRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalRouteArgs>(
          orElse: () => const PersonalRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.PersonalPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomBottomBarPage]
class CustomBottomBarRoute extends _i12.PageRouteInfo<void> {
  const CustomBottomBarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CustomBottomBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomBottomBarRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthenticationPage]
class AuthenticationRoute extends _i12.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i12.PageInfo<AuthenticationRouteArgs> page =
      _i12.PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthorizationPage]
class AuthorizationRoute extends _i12.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i12.PageInfo<AuthorizationRouteArgs> page =
      _i12.PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AuthEmptyPage]
class AuthEmptyRoute extends _i12.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BusketPage]
class BusketRoute extends _i12.PageRouteInfo<void> {
  const BusketRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BusketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BusketRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GodPage]
class GodRoute extends _i12.PageRouteInfo<void> {
  const GodRoute({List<_i12.PageRouteInfo>? children})
      : super(
          GodRoute.name,
          initialChildren: children,
        );

  static const String name = 'GodRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainCardEmptyPage]
class MainCardEmptyRoute extends _i12.PageRouteInfo<void> {
  const MainCardEmptyRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainCardEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardEmptyRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MainCardPage]
class MainCardRoute extends _i12.PageRouteInfo<void> {
  const MainCardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SingleCardPage]
class SingleCardRoute extends _i12.PageRouteInfo<SingleCardRouteArgs> {
  SingleCardRoute({
    _i13.Key? key,
    required int index,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SingleCardRoute.name,
          args: SingleCardRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleCardRoute';

  static const _i12.PageInfo<SingleCardRouteArgs> page =
      _i12.PageInfo<SingleCardRouteArgs>(name);
}

class SingleCardRouteArgs {
  const SingleCardRouteArgs({
    this.key,
    required this.index,
  });

  final _i13.Key? key;

  final int index;

  @override
  String toString() {
    return 'SingleCardRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i10.PersonalEmptyPage]
class PersonalEmptyRoute extends _i12.PageRouteInfo<void> {
  const PersonalEmptyRoute({List<_i12.PageRouteInfo>? children})
      : super(
          PersonalEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalEmptyRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PersonalPage]
class PersonalRoute extends _i12.PageRouteInfo<PersonalRouteArgs> {
  PersonalRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PersonalRoute.name,
          args: PersonalRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PersonalRoute';

  static const _i12.PageInfo<PersonalRouteArgs> page =
      _i12.PageInfo<PersonalRouteArgs>(name);
}

class PersonalRouteArgs {
  const PersonalRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'PersonalRouteArgs{key: $key}';
  }
}
