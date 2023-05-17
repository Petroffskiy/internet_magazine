// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
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
import 'package:internet_magazine/feature/presentation/god_mode/page/god_empty_page.dart'
    as _i6;
import 'package:internet_magazine/feature/presentation/god_mode/page/god_new_product_page.dart'
    as _i7;
import 'package:internet_magazine/feature/presentation/god_mode/page/god_page.dart'
    as _i8;
import 'package:internet_magazine/feature/presentation/god_mode/page/god_product_page.dart'
    as _i9;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_empty_page.dart'
    as _i10;
import 'package:internet_magazine/feature/presentation/main_cards/page/main_card_page.dart'
    as _i11;
import 'package:internet_magazine/feature/presentation/main_cards/page/single_card_page.dart'
    as _i12;
import 'package:internet_magazine/feature/presentation/personal/page/personal_empty.dart'
    as _i13;
import 'package:internet_magazine/feature/presentation/personal/page/personal_page.dart'
    as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super();

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    CustomBottomBarRoute.name: (routeData) {
      final args = routeData.argsAs<CustomBottomBarRouteArgs>(
          orElse: () => const CustomBottomBarRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CustomBottomBarPage(key: args.key),
      );
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthenticationPage(key: args.key),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>(
          orElse: () => const AuthorizationRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthorizationPage(key: args.key),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthEmptyPage(),
      );
    },
    BusketRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BusketPage(),
      );
    },
    GodEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.GodEmptyPage(),
      );
    },
    GodNewProductRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.GodNewProductPage(),
      );
    },
    GodRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.GodPage(),
      );
    },
    GodProductRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.GodProductPage(),
      );
    },
    MainCardEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MainCardEmptyPage(),
      );
    },
    MainCardRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MainCardPage(),
      );
    },
    SingleCardRoute.name: (routeData) {
      final args = routeData.argsAs<SingleCardRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SingleCardPage(
          key: args.key,
          index: args.index,
        ),
      );
    },
    PersonalEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PersonalEmptyPage(),
      );
    },
    PersonalRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalRouteArgs>(
          orElse: () => const PersonalRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.PersonalPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomBottomBarPage]
class CustomBottomBarRoute
    extends _i15.PageRouteInfo<CustomBottomBarRouteArgs> {
  CustomBottomBarRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CustomBottomBarRoute.name,
          args: CustomBottomBarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CustomBottomBarRoute';

  static const _i15.PageInfo<CustomBottomBarRouteArgs> page =
      _i15.PageInfo<CustomBottomBarRouteArgs>(name);
}

class CustomBottomBarRouteArgs {
  const CustomBottomBarRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'CustomBottomBarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthenticationPage]
class AuthenticationRoute extends _i15.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i15.PageInfo<AuthenticationRouteArgs> page =
      _i15.PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthorizationPage]
class AuthorizationRoute extends _i15.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i15.PageInfo<AuthorizationRouteArgs> page =
      _i15.PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AuthEmptyPage]
class AuthEmptyRoute extends _i15.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.BusketPage]
class BusketRoute extends _i15.PageRouteInfo<void> {
  const BusketRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BusketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BusketRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GodEmptyPage]
class GodEmptyRoute extends _i15.PageRouteInfo<void> {
  const GodEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GodEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'GodEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.GodNewProductPage]
class GodNewProductRoute extends _i15.PageRouteInfo<void> {
  const GodNewProductRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GodNewProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'GodNewProductRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.GodPage]
class GodRoute extends _i15.PageRouteInfo<void> {
  const GodRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GodRoute.name,
          initialChildren: children,
        );

  static const String name = 'GodRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.GodProductPage]
class GodProductRoute extends _i15.PageRouteInfo<void> {
  const GodProductRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GodProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'GodProductRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MainCardEmptyPage]
class MainCardEmptyRoute extends _i15.PageRouteInfo<void> {
  const MainCardEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainCardEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MainCardPage]
class MainCardRoute extends _i15.PageRouteInfo<void> {
  const MainCardRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCardRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SingleCardPage]
class SingleCardRoute extends _i15.PageRouteInfo<SingleCardRouteArgs> {
  SingleCardRoute({
    _i16.Key? key,
    required int index,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SingleCardRoute.name,
          args: SingleCardRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleCardRoute';

  static const _i15.PageInfo<SingleCardRouteArgs> page =
      _i15.PageInfo<SingleCardRouteArgs>(name);
}

class SingleCardRouteArgs {
  const SingleCardRouteArgs({
    this.key,
    required this.index,
  });

  final _i16.Key? key;

  final int index;

  @override
  String toString() {
    return 'SingleCardRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i13.PersonalEmptyPage]
class PersonalEmptyRoute extends _i15.PageRouteInfo<void> {
  const PersonalEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PersonalEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.PersonalPage]
class PersonalRoute extends _i15.PageRouteInfo<PersonalRouteArgs> {
  PersonalRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          PersonalRoute.name,
          args: PersonalRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PersonalRoute';

  static const _i15.PageInfo<PersonalRouteArgs> page =
      _i15.PageInfo<PersonalRouteArgs>(name);
}

class PersonalRouteArgs {
  const PersonalRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PersonalRouteArgs{key: $key}';
  }
}
