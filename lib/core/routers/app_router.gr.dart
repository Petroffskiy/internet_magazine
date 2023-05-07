// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:internet_magazine/feature/presentation/auth/auth_empty.dart'
    as _i3;
import 'package:internet_magazine/feature/presentation/auth/authenticate/page/authentication_page.dart'
    as _i1;
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart'
    as _i2;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super();

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AuthenticationPage(key: args.key),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>(
          orElse: () => const AuthorizationRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthorizationPage(key: args.key),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthEmptyPage(),
      );
    },
    MainCardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainCardPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticationPage]
class AuthenticationRoute extends _i5.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i5.PageInfo<AuthenticationRouteArgs> page =
      _i5.PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthorizationPage]
class AuthorizationRoute extends _i5.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i5.PageInfo<AuthorizationRouteArgs> page =
      _i5.PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthEmptyPage]
class AuthEmptyRoute extends _i5.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainCardPage]
class MainCardRoute extends _i5.PageRouteInfo<void> {
  const MainCardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
