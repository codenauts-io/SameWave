import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:same_wave_app/routes/route_paths.dart';
import 'package:same_wave_app/screens/dashboard/dashboard.dart';
import 'package:same_wave_app/screens/files/files.dart';
import 'package:same_wave_app/screens/home/home.dart';
import 'package:same_wave_app/screens/payments/payments.dart';
import 'package:same_wave_app/screens/profile/profile.dart';
import 'package:same_wave_app/screens/projects/projects.dart';
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
        GoRoute(
            path: RoutePaths.projectsRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const ProjectsScreen();
            }),
        GoRoute(
            path: RoutePaths.profileRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const ProfileScreen();
            }),
        GoRoute(
            path: RoutePaths.paymentsRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const PaymentsScreen();
            }),
        GoRoute(
            path: RoutePaths.filesRoutePath,
            builder: (BuildContext context, GoRouterState state) {
              return const FilesScreen();
            }),
      ],
    );
    return router;
  }
}
