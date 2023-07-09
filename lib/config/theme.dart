import 'package:dynamic_color/dynamic_color.dart';
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

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.blue,
    required this.onBlue,
    required this.blueContainer,
    required this.onBlueContainer,
    required this.red,
    required this.onRed,
    required this.redContainer,
    required this.onRedContainer,
    required this.yellow,
    required this.onYellow,
    required this.yellowContainer,
    required this.onYellowContainer,
    required this.green,
    required this.onGreen,
    required this.greenContainer,
    required this.onGreenContainer,
    required this.orange,
    required this.onOrange,
    required this.orangeContainer,
    required this.onOrangeContainer,
  }) : super();

  final Color blue;
  final Color onBlue;
  final Color blueContainer;
  final Color onBlueContainer;

  final Color red;
  final Color onRed;
  final Color redContainer;
  final Color onRedContainer;

  final Color yellow;
  final Color onYellow;
  final Color yellowContainer;
  final Color onYellowContainer;

  final Color green;
  final Color onGreen;
  final Color greenContainer;
  final Color onGreenContainer;

  final Color orange;
  final Color onOrange;
  final Color orangeContainer;
  final Color onOrangeContainer;

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      red: Color.lerp(red, other.red, t)!,
      onRed: Color.lerp(onRed, other.onRed, t)!,
      redContainer: Color.lerp(redContainer, other.redContainer, t)!,
      onRedContainer: Color.lerp(onRedContainer, other.onRedContainer, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      onBlue: Color.lerp(onBlue, other.onBlue, t)!,
      blueContainer: Color.lerp(blueContainer, other.blueContainer, t)!,
      onBlueContainer: Color.lerp(onBlueContainer, other.onBlueContainer, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      onYellow: Color.lerp(onYellow, other.onYellow, t)!,
      yellowContainer: Color.lerp(yellowContainer, other.yellowContainer, t)!,
      onYellowContainer: Color.lerp(onYellowContainer, other.onYellowContainer, t)!,
      green: Color.lerp(green, other.green, t)!,
      onGreen: Color.lerp(onGreen, other.onGreen, t)!,
      greenContainer: Color.lerp(greenContainer, other.greenContainer, t)!,
      onGreenContainer: Color.lerp(onGreenContainer, other.onGreenContainer, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      onOrange: Color.lerp(onOrange, other.onOrange, t)!,
      orangeContainer: Color.lerp(orangeContainer, other.orangeContainer, t)!,
      onOrangeContainer: Color.lerp(onOrangeContainer, other.onOrangeContainer, t)!,
    );
  }

  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      red: red.harmonizeWith(dynamic.primary),
      onRed: onRed.harmonizeWith(dynamic.onPrimary),
      redContainer: redContainer.harmonizeWith(dynamic.primaryContainer),
      onRedContainer: onRedContainer.harmonizeWith(dynamic.onPrimaryContainer),
      blue: blue.harmonizeWith(dynamic.primary),
      onBlue: onBlue.harmonizeWith(dynamic.onPrimary),
      blueContainer: blueContainer.harmonizeWith(dynamic.primaryContainer),
      onBlueContainer: onBlueContainer.harmonizeWith(dynamic.onPrimaryContainer),
      yellow: yellow.harmonizeWith(dynamic.primary),
      onYellow: onYellow.harmonizeWith(dynamic.onPrimary),
      yellowContainer: yellowContainer.harmonizeWith(dynamic.primaryContainer),
      onYellowContainer: onYellowContainer.harmonizeWith(dynamic.onPrimaryContainer),
      green: green.harmonizeWith(dynamic.primary),
      onGreen: onGreen.harmonizeWith(dynamic.onPrimary),
      greenContainer: greenContainer.harmonizeWith(dynamic.primaryContainer),
      onGreenContainer: onGreenContainer.harmonizeWith(dynamic.onPrimaryContainer),
      orange: orange.harmonizeWith(dynamic.primary),
      onOrange: onOrange.harmonizeWith(dynamic.onPrimary),
      orangeContainer: orangeContainer.harmonizeWith(dynamic.primaryContainer),
      onOrangeContainer: onOrangeContainer.harmonizeWith(dynamic.onPrimaryContainer),
    );
  }

  @override
  CustomColors copyWith({
    Color? red,
    Color? onRed,
    Color? redContainer,
    Color? onRedContainer,
    Color? blue,
    Color? onBlue,
    Color? blueContainer,
    Color? onBlueContainer,
    Color? yellow,
    Color? onYellow,
    Color? yellowContainer,
    Color? onYellowContainer,
    Color? green,
    Color? onGreen,
    Color? greenContainer,
    Color? onGreenContainer,
    Color? orange,
    Color? onOrange,
    Color? orangeContainer,
    Color? onOrangeContainer,
  }) {
    return CustomColors(
      red: red ?? this.red,
      onRed: onRed ?? this.onRed,
      redContainer: redContainer ?? this.redContainer,
      onRedContainer: onRedContainer ?? this.onRedContainer,
      blue: blue ?? this.blue,
      onBlue: onBlue ?? this.onBlue,
      blueContainer: blueContainer ?? this.blueContainer,
      onBlueContainer: onBlueContainer ?? this.onBlueContainer,
      yellow: yellow ?? this.yellow,
      onYellow: onYellow ?? this.onYellow,
      yellowContainer: yellowContainer ?? this.yellowContainer,
      onYellowContainer: onYellowContainer ?? this.onYellowContainer,
      green: green ?? this.green,
      onGreen: onGreen ?? this.onGreen,
      greenContainer: greenContainer ?? this.greenContainer,
      onGreenContainer: onGreenContainer ?? this.onGreenContainer,
      orange: orange ?? this.orange,
      onOrange: onOrange ?? this.onOrange,
      orangeContainer: orangeContainer ?? this.orangeContainer,
      onOrangeContainer: onOrangeContainer ?? this.onOrangeContainer,
    );
  }
}
