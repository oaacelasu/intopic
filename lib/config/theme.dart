import 'package:flutter/material.dart';
import 'package:intopic/config/app_colors.dart';
import 'package:intopic/config/typography/app_text_styles.dart';
import 'package:intopic/features/common/presentation/utils/extensions/build_context_extension.dart';

/// Default [ThemeData] for Example
class AppTheme {
  /// Default constructor for Example [ThemeData]
  AppTheme(this._brightness);

  final Brightness _brightness;

  /// Exposes theme data to MaterialApp
  ThemeData getThemeData(BuildContext context) {
    return ThemeData(brightness: _brightness).copyWith(
      colorScheme: _colorScheme,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: AppTextStyle.labelMedium,
        isDense: true,
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: context.outlineColor),
        ),
        errorMaxLines: 3,
        fillColor: Colors.white,
        filled: true,
      ),
      useMaterial3: true,
    );
  }

  ColorScheme get _colorScheme => ColorScheme.fromSeed(
        seedColor: AppColors.blue,
        brightness: _brightness,
      );
}
