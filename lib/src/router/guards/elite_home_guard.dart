import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EliteHomeGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final autenticated = FirebaseAuth.instance.currentUser;
    if (autenticated != null) {
      resolver.next();
    } else {
      router.replaceNamed('/welcome');
    }
  }
}
