
import 'package:flutter/material.dart';
import 'package:intopic/config/theme.dart';

extension ColorX on BuildContext {
  Brightness get brightness => Theme.of(this).brightness;

  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;

  Color get primaryContainerColor =>
      Theme.of(this).colorScheme.primaryContainer;

  Color get onPrimaryContainerColor =>
      Theme.of(this).colorScheme.onPrimaryContainer;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  Color get onSecondaryColor => Theme.of(this).colorScheme.onSecondary;

  Color get secondaryContainerColor =>
      Theme.of(this).colorScheme.secondaryContainer;

  Color get onSecondaryContainerColor =>
      Theme.of(this).colorScheme.onSecondaryContainer;

  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;

  Color get onTertiaryColor => Theme.of(this).colorScheme.onTertiary;

  Color get tertiaryContainerColor =>
      Theme.of(this).colorScheme.tertiaryContainer;

  Color get onTertiaryContainerColor =>
      Theme.of(this).colorScheme.onTertiaryContainer;

  Color get errorColor => Theme.of(this).colorScheme.error;

  Color get onErrorColor => Theme.of(this).colorScheme.onError;

  Color get errorContainerColor => Theme.of(this).colorScheme.errorContainer;

  Color get onErrorContainerColor =>
      Theme.of(this).colorScheme.onErrorContainer;

  Color get backgroundColor => Theme.of(this).colorScheme.background;

  Color get onBackgroundColor => Theme.of(this).colorScheme.onBackground;

  Color get surfaceColor => Theme.of(this).colorScheme.surface;

  Color get onSurfaceColor => Theme.of(this).colorScheme.onSurface;

  Color get surfaceVariantColor => Theme.of(this).colorScheme.surfaceVariant;

  Color get onSurfaceVariantColor =>
      Theme.of(this).colorScheme.onSurfaceVariant;

  Color get outlineColor => Theme.of(this).colorScheme.outline;

  Color get shadowColor => Theme.of(this).colorScheme.shadow;

  Color get inverseSurfaceColor => Theme.of(this).colorScheme.inverseSurface;

  Color get onInverseSurfaceColor =>
      Theme.of(this).colorScheme.onInverseSurface;

  Color get inversePrimaryColor => Theme.of(this).colorScheme.inversePrimary;

  Color? get blueColor => Theme.of(this).extension<CustomColors>()?.blue;

  Color? get onBlueColor => Theme.of(this).extension<CustomColors>()?.onBlue;

  Color? get blueContainer =>
      Theme.of(this).extension<CustomColors>()?.blueContainer;

  Color? get onBlueContainer =>
      Theme.of(this).extension<CustomColors>()?.onBlueContainer;

  Color? get greenColor => Theme.of(this).extension<CustomColors>()?.green;

  Color? get onGreenColor => Theme.of(this).extension<CustomColors>()?.onGreen;

  Color? get greenContainer =>
      Theme.of(this).extension<CustomColors>()?.greenContainer;

  Color? get onGreenContainer =>
      Theme.of(this).extension<CustomColors>()?.onGreenContainer;

  Color? get yellowColor => Theme.of(this).extension<CustomColors>()?.yellow;

  Color? get onYellowColor =>
      Theme.of(this).extension<CustomColors>()?.onYellow;

  Color? get yellowContainer =>
      Theme.of(this).extension<CustomColors>()?.yellowContainer;

  Color? get onYellowContainer =>
      Theme.of(this).extension<CustomColors>()?.onYellowContainer;

  Color? get orangeColor => Theme.of(this).extension<CustomColors>()?.orange;

  Color? get onOrangeColor =>
      Theme.of(this).extension<CustomColors>()?.onOrange;

  Color? get orangeContainer =>
      Theme.of(this).extension<CustomColors>()?.orangeContainer;

  Color? get onOrangeContainer =>
      Theme.of(this).extension<CustomColors>()?.onOrangeContainer;

  Color? get redColor => Theme.of(this).extension<CustomColors>()?.red;

  Color? get onRedColor => Theme.of(this).extension<CustomColors>()?.onRed;

  Color? get redContainer =>
      Theme.of(this).extension<CustomColors>()?.redContainer;

  Color? get onRedContainer =>
      Theme.of(this).extension<CustomColors>()?.onRedContainer;
}

extension TextX on BuildContext {
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;

  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;

  TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall!;

  TextStyle get labelMedium => Theme.of(this).textTheme.labelMedium!;

  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge!;

  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;

  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;

  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;

  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;

  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;

  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;

  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;

  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;

  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
}

extension ThemeX on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  bool get isLight => Theme.of(this).brightness == Brightness.light;
}