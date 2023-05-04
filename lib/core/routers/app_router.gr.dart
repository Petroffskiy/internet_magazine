// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:internet_magazine/feature/presentation/auth/auth_empty.dart'
    as _i2;
import 'package:internet_magazine/feature/presentation/auth/authenticate/page/authentication_page.dart'
    as _i1;
import 'package:internet_magazine/feature/presentation/auth/authorization/page/authorization_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super();

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthenticateRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthenticationPage(),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthEmptyPage(),
      );
    },
    AuthorizationRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthorizationPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticationPage]
class AuthenticateRoute extends _i4.PageRouteInfo<void> {
  const AuthenticateRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthenticateRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticateRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthEmptyPage]
class AuthEmptyRoute extends _i4.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthorizationPage]
class AuthorizationRoute extends _i4.PageRouteInfo<void> {
  const AuthorizationRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthorizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
