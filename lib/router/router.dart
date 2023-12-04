import 'package:tripweaver/src/auth/presentation/login/login_page.dart';
import 'package:tripweaver/src/common/error/error_page.dart';
import 'package:tripweaver/src/home/home_page.dart';
import 'package:tripweaver/src/onboarding/presentation/onboarding_page.dart';
import 'package:tripweaver/src/trip/presentation/trip_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  home('/'),
  login('/auth/login'),
  signup('/auth/signup'),
  settings('/settings'),
  allTrips('/trips');

  final String path;

  const Routes(this.path);
}

final router = GoRouter(
  initialLocation: Routes.home.path,
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
      builder: (context, state) => const OnboardingPage(),
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
    GoRoute(
      path: Routes.login.path,
      builder: (context, state) => Container(),
    ),
  ],
);
