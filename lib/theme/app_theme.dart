import 'package:app_template/src/common/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final mutedGrey = Colors.grey[300]!;
  static final blue = Colors.blue[300]!;

  static ThemeData light(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      inputDecorationTheme: inputDecorationTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(useMaterial3: true).copyWith(
      inputDecorationTheme: inputDecorationTheme,
    );
  }

  static const inputDecorationTheme = InputDecorationTheme(
    filled: true,
    border: OutlineInputBorder(
      borderRadius: Rad.all8,
      borderSide: BorderSide.none,
    ),
  );
}
