import 'package:flutter/material.dart';

/// Application-wide constants. Split into different areas: theme, layout, and colors.
abstract class AppColors {
  /// Blue Color
  static const Color blue = Color(0xFF5FAAEC);

  /// Green Color
  static const Color green = Color(0xFF41CF69);

  /// Red Color
  static const Color red = Color(0xFFEA676A);

  /// Yellow Color
  static const Color yellow = Color(0xFFF8D355);

  /// Orange Color
  static const Color orange = Color(0xFFEFAA4C);

  /// Custom Color Schemes based on seed colors

  /// Blue Color Scheme
  static ColorScheme blueScheme = ColorScheme.fromSeed(seedColor: blue);

  /// Red Color Scheme
  static ColorScheme redScheme = ColorScheme.fromSeed(seedColor: red);

  /// Yellow Color Scheme
  static ColorScheme yellowScheme = ColorScheme.fromSeed(seedColor: yellow);

  /// Green Color Scheme
  static ColorScheme greenScheme = ColorScheme.fromSeed(seedColor: green);

  /// Orange Color Scheme
  static ColorScheme orangeScheme = ColorScheme.fromSeed(seedColor: orange);

  /// Transparent color
  static const Color transparent = Color(0x00000000);

  /// Generate a random color based on the seed string
  static Color randomColor(String seed) => <int, Color>{
        0: blue,
        1: green,
        2: red,
        3: yellow,
        4: orange,
      }[(seed.hashCode + seed.length) % 5]!;
}
