import 'package:flutter/material.dart';

class AppColorsLight {
  // Base colors for light theme
  static const Color primaryColor = Color(0xFF3F51B5);
  static const Color secondaryColor = Color(0xFFFF9800);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color textColor = Color(0xFF212121);

  // Different story themes/settings
  static const Map<String, Color> storyBackgrounds = {
    'city': Color(0xFF2196F3),
    'forest': Color(0xFF4CAF50),
    'cafe': Color(0xFFFF9800),
    'school': Color(0xFF9C27B0),
  };
}

class AppColorsDark {
  // Base colors for dark theme
  static const Color primaryColor = Color(0xFF5C6BC0);
  static const Color secondaryColor = Color(0xFFFFB74D);
  static const Color backgroundColor = Color(0xFF121212);
  static const Color textColor = Color(0xFFE0E0E0);

  // Different story themes/settings
  static const Map<String, Color> storyBackgrounds = {
    'city': Color(0xFF1E88E5),
    'forest': Color(0xFF43A047),
    'cafe': Color(0xFFFFB74D),
    'school': Color(0xFFAB47BC),
  };
}
