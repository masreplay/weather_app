import 'package:flutter/material.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  ThemeData _build(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
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
      seedColor: Colors.purple,
    );
  }

  @override
  ThemeExtension<AppTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    return this;
  }
}
