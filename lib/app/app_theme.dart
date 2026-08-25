import 'package:crafty_bay/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme: _progressIndicatorThemeData,

  );


  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.black,

    progressIndicatorTheme: _progressIndicatorThemeData,

  );
  static final ProgressIndicatorThemeData _progressIndicatorThemeData = ProgressIndicatorThemeData(
      color: AppColors.themeColor,
    );
}
