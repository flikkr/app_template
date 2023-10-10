import 'package:app_template/src/auth/presentation/login/login_page.dart';
import 'package:app_template/src/home/home_page.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  home('/'),
  login('/login'),
  settings('/settings');

  final String path;

  const Routes(this.path);
}

final router = GoRouter(
  redirect: (context, state) {
    // if ()
  },
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
  ],
);
