import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          maintainState: true,
          page: AuthEmptyRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: AuthenticationRoute.page,
            ),
            AutoRoute(
              page: AuthorizationRoute.page,
              path: 'authorization/',
            ),
            RedirectRoute(path: "*", redirectTo: ""),
          ],
        ),
        AutoRoute(
          path: "/main",
          page: MainCardRoute.page,
        ),
      ];
}
