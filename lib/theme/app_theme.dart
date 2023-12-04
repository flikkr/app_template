import 'package:tripweaver/src/common/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final mutedGrey = Colors.grey[300]!;
  static final blue = Colors.blue[300]!;

  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      inputDecorationTheme: _inputDecorationTheme,
      snackBarTheme: _snackbarThemeData,
      appBarTheme: _appBarTheme,
    );
  }
}

const _inputDecorationTheme = InputDecorationTheme(
  filled: true,
  border: OutlineInputBorder(
    borderRadius: Rad.all8,
    borderSide: BorderSide.none,
  ),
);

final _snackbarThemeData = SnackBarThemeData(
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Space.$200),
  ),
);

const AppBarTheme _appBarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.black),
);
