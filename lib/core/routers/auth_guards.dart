import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:internet_magazine/core/routers/app_router.gr.dart';

class AuthGuards extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final loggedIn = FirebaseAuth.instance.currentUser;
    if (loggedIn != null || resolver.route.name == AuthEmptyRoute.name) {
      resolver.next();
    } else {
      router.push(const AuthEmptyRoute());
    }
  }
}
