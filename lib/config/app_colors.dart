import 'package:flutter/material.dart';

/// Application-wide constants. Split into different areas: theme, layout and
abstract class AppColors {
  /// Custom System Colors
  static const Color blue = Color(0xFF5FAAEC);
  static const Color green = Color(0xFF41CF69);
  static const Color red = Color(0xFFEA676A);
  static const Color yellow = Color(0xFFF8D355);
  static const Color orange = Color(0xFFEFAA4C);

  /// Custom Color Scheme
  static ColorScheme blueScheme = ColorScheme.fromSeed(seedColor: blue);
  static ColorScheme redScheme = ColorScheme.fromSeed(seedColor: red);
  static ColorScheme yellowScheme = ColorScheme.fromSeed(seedColor: yellow);
  static ColorScheme greenScheme = ColorScheme.fromSeed(seedColor: green);
  static ColorScheme orangeScheme = ColorScheme.fromSeed(seedColor: orange);

  /// Transparent
  static const Color transparent = Color(0x00000000);

  static Color randomColor(String seed) => <int, Color>{
    0: blue,
    1: green,
    2: red,
    3: yellow,
    4: orange,
  }[(seed.hashCode + seed.length) % 5]!;
}