import 'package:app_template/src/auth/presentation/login/login_page.dart';
import 'package:app_template/src/common/error/error_page.dart';
import 'package:app_template/src/home/home_page.dart';
import 'package:app_template/src/trip/presentation/trip_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  home('/'),
  login('/login'),
  settings('/settings'),
  allTrips('/trips');

  final String path;

  const Routes(this.path);
}

final router = GoRouter(
  initialLocation: Routes.login.path,
  errorPageBuilder: (context, state) => MaterialPage(
    child: ErrorPage(
      image: Container(),
      title: '404',
      subtitle: 'Page not found',
    ),
  ),
  routes: [
    GoRoute(
      path: Routes.home.path,
      builder: (context, state) => const HomePage(),
    ),
    // GoRoute(
    //   path: Routes.settings.path,
    //   builder: (context, state) => const SettingsPage(),
    // ),
    GoRoute(
      path: Routes.login.path,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: Routes.allTrips.path,
      builder: (context, state) => const TripPage(),
    ),
  ],
);
