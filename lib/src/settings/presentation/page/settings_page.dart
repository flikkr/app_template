import 'package:tripweaver/src/settings/data/settings_repository.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// @widgetbook.UseCase(name: "Settings page", type: SettingsPage)
// Widget settingsPageUseCase(BuildContext context) {
//   return const SettingsPage();
// }

class SettingsPage extends StatelessWidget {
  final ISettingsRepository settingsRepository;

  const SettingsPage({super.key, required this.settingsRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Hello there')
            // SettingsHeader(title: "Hello"),
          ],
        ),
      ),
    );
  }
}
