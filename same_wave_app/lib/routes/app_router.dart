import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:same_wave_app/routes/route_paths.dart';
import 'package:same_wave_app/screens/dashboard/dashboard.dart';
import 'package:same_wave_app/screens/home/home.dart';
import 'package:same_wave_app/screens/settings/settings.dart';

class AppRouter {
  static String? initialLocationResolver() {
    return RoutePaths.homeRoutePath;
  }

  static GoRouter router() {
    GoRouter router = GoRouter(
      initialLocation: initialLocationResolver(),
      routes: <RouteBase>[
        GoRoute(
            path: RoutePaths.homeRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            }),
        GoRoute(
            path: RoutePaths.dashboardRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const DashboardScreen();
            }),
        GoRoute(
            path: RoutePaths.settingsRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const SettingsScreen();
            }),
      ],
    );
    return router;
  }
}
