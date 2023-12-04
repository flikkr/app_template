import 'package:layout/layout.dart';
import 'package:tripweaver/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tripweaver/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        title: 'Tripweaver',
        theme: AppTheme.light(),
        routerConfig: router,
      ),
    );
  }
}
