import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Insets {
  const Insets._();

  static const double zero = 0.0;
  static const double extraSmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 32.0;
  static const double extraLarge = 64.0;
  static const double full = double.infinity;
}

class AppTheme {
  const AppTheme();
  ThemeData _build(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      textTheme: _buildTextTheme(brightness),
      colorScheme: _buildColorScheme(brightness),
    );
  }

  ThemeData buildLight() {
    return _build(Brightness.light);
  }

  ThemeData buildDark() {
    return _build(Brightness.dark);
  }

  ColorScheme _buildColorScheme(Brightness brightness) {
    return ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: const Color(0xFF6C00BA),
    );
  }

  TextTheme _buildTextTheme(Brightness brightness) {
    final colorScheme = _buildColorScheme(brightness);

    final textStyle = TextStyle(height: 1.5, color: colorScheme.onBackground);
    final textTheme = TextTheme(
      displayLarge: textStyle,
      displayMedium: textStyle,
      displaySmall: textStyle,
      headlineLarge: textStyle,
      headlineMedium: textStyle,
      headlineSmall: textStyle,
      titleLarge: textStyle,
      titleMedium: textStyle,
      titleSmall: textStyle,
      bodyLarge: textStyle,
      bodyMedium: textStyle,
      bodySmall: textStyle,
      labelLarge: textStyle,
      labelMedium: textStyle,
      labelSmall: textStyle,
    );
    return GoogleFonts.ibmPlexSansArabicTextTheme(textTheme);
  }
}
