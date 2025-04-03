import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle heading(BuildContext context) {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      height: 1.2,
      letterSpacing: -0.5,
      color: Theme.of(context).primaryColor,
    );
  }

  static TextStyle subheading(BuildContext context) {
    return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      height: 1.3,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  static TextStyle bodyText(BuildContext context) {
    return TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      height: 1.5,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  static TextStyle bodyTextSmall(BuildContext context) {
    return TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      height: 1.5,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }
}
