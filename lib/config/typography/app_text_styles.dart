import 'package:flutter/material.dart';

import 'app_font_weight.dart';

abstract class AppTextStyle {
  static const _baseTextStyle = TextStyle(
    fontWeight: AppFontWeight.regular,
    fontFamily: 'Roboto',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Display Large Text Style
  static final TextStyle displayLarge = _baseTextStyle.copyWith(
    fontSize: 57,
    fontWeight: AppFontWeight.bold,
    height: 1.12,
    letterSpacing: -0.25,
  );

  /// Display Medium Text Style
  static final TextStyle displayMedium = _baseTextStyle.copyWith(
    fontSize: 45,
    fontWeight: AppFontWeight.bold,
    height: 1.15,
  );

  /// Display Small Text Style
  static final TextStyle displaySmall = _baseTextStyle.copyWith(
    fontSize: 34,
    fontWeight: AppFontWeight.bold,
    height: 1.18,
  );

  /// Headline Large Text Style
  static final TextStyle headlineLarge = _baseTextStyle.copyWith(
    fontSize: 28,
    fontWeight: AppFontWeight.bold,
    height: 1.21,
  );

  /// Headline Medium Text Style
  static final TextStyle headlineMedium = _baseTextStyle.copyWith(
    fontSize: 24,
    fontWeight: AppFontWeight.bold,
    height: 1.25,
  );

  /// Headline Small Text Style
  static final TextStyle headlineSmall = _baseTextStyle.copyWith(
    fontSize: 20,
    fontWeight: AppFontWeight.bold,
    height: 1.3,
  );

  /// Title Large Text Style
  static final TextStyle titleLarge = _baseTextStyle.copyWith(
    fontSize: 20,
    fontWeight: AppFontWeight.bold,
    height: 1.3,
  );

  /// Title Medium Text Style
  static final TextStyle titleMedium = _baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: AppFontWeight.bold,
    height: 1.33,
  );

  /// Title Small Text Style
  static final TextStyle titleSmall = _baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: AppFontWeight.bold,
    height: 1.38,
  );

  /// Body Large Text Style
  static final TextStyle bodyLarge = _baseTextStyle.copyWith(
    fontSize: 18,
    fontWeight: AppFontWeight.regular,
    height: 1.33,
  );

  /// Body Medium Text Style
  static final TextStyle bodyMedium = _baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: AppFontWeight.regular,
    height: 1.38,
  );

  /// Body Small Text Style
  static final TextStyle bodySmall = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: AppFontWeight.regular,
    height: 1.43,
  );

  /// Label Large Text Style
  static final TextStyle labelLarge = _baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: AppFontWeight.bold,
    height: 1.38,
  );

  /// Label Medium Text Style
  static final TextStyle labelMedium = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: AppFontWeight.bold,
    height: 1.43,
  );

  /// Label Small Text Style
  static final TextStyle labelSmall = _baseTextStyle.copyWith(
    fontSize: 12,
    fontWeight: AppFontWeight.bold,
    height: 1.5,
  );
}
