import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripweaver/router/router.dart';
import 'package:tripweaver/src/common/menu/nav_drawer.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Home page', type: HomePage)
Widget homePageUseCase(BuildContext context) {
  return const HomePage();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go(Routes.allTrips.path),
              child: const Text('All trips'),
            ),
          ],
        ),
      ),
    );
  }
}
