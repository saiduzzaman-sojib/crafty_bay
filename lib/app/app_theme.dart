import 'package:crafty_bay/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.white,
    progressIndicatorTheme: _progressIndicatorThemeData,
    textTheme: _textTheme,
    filledButtonTheme: _filledButtonThemeData,

    elevatedButtonTheme: ElevatedButtonThemeData(
    style: _filledButtonThemeData.style,
    ),
    inputDecorationTheme: _inputDecorationTheme,
  );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.black,
    progressIndicatorTheme: _progressIndicatorThemeData,
    textTheme: _textTheme,
    filledButtonTheme: _filledButtonThemeData,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _filledButtonThemeData.style,
    ),
    inputDecorationTheme: _inputDecorationTheme,
  );

  static final ProgressIndicatorThemeData _progressIndicatorThemeData =
      ProgressIndicatorThemeData(
    color: AppColors.themeColor,
  );

  static final TextTheme _textTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
  );

  static final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.themeColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.themeColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.themeColor),
    ),
  );

  static final FilledButtonThemeData _filledButtonThemeData = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.themeColor,
      foregroundColor: Colors.white,
      fixedSize: Size.fromWidth(double.maxFinite),
      padding: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,letterSpacing: 0.5,fontSize: 16),
    ),
  );
}