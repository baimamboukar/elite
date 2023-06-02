import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class EliteRouterObserver extends AutoRouterObserver {
  @override
  Future<void> didPush(
    Route<dynamic>? route,
    Route<dynamic>? previousRoute,
  ) async {
    /// Register a Firebase Analytics event when the user pushes to the "About" route.
    await FirebaseAnalytics.instance
        .setCurrentScreen(screenName: route!.settings.name);
    await FirebaseAnalytics.instance.logEvent(
      name: 'page_visited',
      parameters: {
        'route_name': route.settings.name ?? 'unknown',
        'routed_from': route.settings.name ?? 'unknown',
      },
    );
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    debugPrint('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    debugPrint('Tab route re-visited: ${route.name}');
  }
}
