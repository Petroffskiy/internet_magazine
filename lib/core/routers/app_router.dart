import 'package:auto_route/auto_route.dart';
import 'package:internet_magazine/feature/presentation/personal/page/personal_page.dart';
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
          path: "/bottom_bar",
          page: CustomBottomBarRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: MainCardRoute.page,
            ),
            AutoRoute(
              page: BusketRoute.page,
              path: "basket/",
            ),
            AutoRoute(
              page: PersonalRoute.page,
              path: "personal/",
            ),
          ],
        ),
      ];
}
