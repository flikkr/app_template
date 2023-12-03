import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'theme/app_theme.dart';

// Import the generated directories variable
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Widgetbook.material(
        directories: directories,
        addons: [
          MaterialThemeAddon(
            themes: [
              WidgetbookTheme(
                name: 'Light',
                data: AppTheme.light(),
              ),
            ],
          ),
          AlignmentAddon(
            initialAlignment: Alignment.topLeft,
          ),
          DeviceFrameAddon(
            devices: [
              Devices.ios.iPhone13,
              Devices.ios.iPad,
            ],
          ),
        ],
      ),
    );
  }
}
