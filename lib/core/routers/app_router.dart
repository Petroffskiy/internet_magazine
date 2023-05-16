import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:internet_magazine/core/routers/auth_guards.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final loggedIn = FirebaseAuth.instance.currentUser;
    if (loggedIn != null || resolver.route.name == AuthEmptyRoute.name) {
      resolver.next();
    } else {
      router.push(const AuthEmptyRoute());
    }
  }

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/auth',
          maintainState: true,
          keepHistory: false,
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
          path: "/",
          page: CustomBottomBarRoute.page,
          guards: [AuthGuards()],
          children: [
            AutoRoute(
              page: MainCardEmptyRoute.page,
              path: 'main_card_empty/',
              children: [
                AutoRoute(
                  path: '',
                  page: MainCardRoute.page,
                ),
                AutoRoute(
                  path: "singel_card/",
                  page: SingleCardRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: BusketRoute.page,
              path: "basket/",
            ),
            AutoRoute(
                page: PersonalEmptyRoute.page,
                path: "personal_empty/",
                children: [
                  AutoRoute(
                    page: PersonalRoute.page,
                    path: "",
                  ),
                ]),
            AutoRoute(
              path: "god_mode/",
              page: GodRoute.page,
            ),
          ],
        ),
      ];
}
