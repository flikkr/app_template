import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the generated directories variable
import 'theme/app_theme.dart';
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

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
              WidgetbookTheme(
                name: 'Dark',
                data: AppTheme.dark(),
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
