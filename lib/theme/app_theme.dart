import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColorsLight.primaryColor,
      scaffoldBackgroundColor: AppColorsLight.backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: AppColorsLight.primaryColor,
        secondary: AppColorsLight.secondaryColor,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColorsLight.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColorsLight.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColorsDark.primaryColor,
      scaffoldBackgroundColor: AppColorsDark.backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: AppColorsDark.primaryColor,
        secondary: AppColorsDark.secondaryColor,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColorsDark.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColorsDark.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
