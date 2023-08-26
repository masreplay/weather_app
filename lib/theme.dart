import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme();
  ThemeData _build(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      textTheme: _buildTextTheme(),
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

  TextTheme _buildTextTheme() {
    return GoogleFonts.ibmPlexSansArabicTextTheme();
  }
}
