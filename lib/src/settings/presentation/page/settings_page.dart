import 'package:tripweaver/src/settings/data/settings_repository.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// @widgetbook.UseCase(name: "Settings page", type: SettingsPage)
// Widget settingsPageUseCase(BuildContext context) {
//   return const SettingsPage();
// }

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Hello there')
            // SettingsHeader(title: "Hello"),
          ],
        ),
      ),
    );
  }
}
