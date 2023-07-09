import 'package:flutter/material.dart';
import 'package:intopic/config/theme.dart';
import 'package:intopic/l10n/app_localizations.dart';

/// Extension on [BuildContext] to get [Color]s from [ThemeData]
extension ColorX on BuildContext {

  /// Returns brightness of the theme
  Brightness get brightness => Theme.of(this).brightness;


  /// Returns primary color of the theme
  Color get primaryColor => Theme.of(this).colorScheme.primary;


  /// Returns on primary color of the theme
  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;


  /// Returns primary container color of the theme
  Color get primaryContainerColor => Theme.of(this).colorScheme.primaryContainer;


  /// Returns on primary container color of the theme
  Color get onPrimaryContainerColor => Theme.of(this).colorScheme.onPrimaryContainer;


  /// Returns secondary color of the theme
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;


  /// Returns on secondary color of the theme
  Color get onSecondaryColor => Theme.of(this).colorScheme.onSecondary;


  /// Returns secondary container color of the theme
  Color get secondaryContainerColor => Theme.of(this).colorScheme.secondaryContainer;


  /// Returns on secondary container color of the theme
  Color get onSecondaryContainerColor => Theme.of(this).colorScheme.onSecondaryContainer;


  /// Returns tertiary color of the theme
  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;


  /// Returns on tertiary color of the theme
  Color get onTertiaryColor => Theme.of(this).colorScheme.onTertiary;


  /// Returns tertiary container color of the theme
  Color get tertiaryContainerColor => Theme.of(this).colorScheme.tertiaryContainer;


  /// Returns on tertiary container color of the theme
  Color get onTertiaryContainerColor => Theme.of(this).colorScheme.onTertiaryContainer;


  /// Returns error color of the theme
  Color get errorColor => Theme.of(this).colorScheme.error;


  /// Returns on error color of the theme
  Color get onErrorColor => Theme.of(this).colorScheme.onError;


  /// Returns error container color of the theme
  Color get errorContainerColor => Theme.of(this).colorScheme.errorContainer;


  /// Returns on error container color of the theme
  Color get onErrorContainerColor => Theme.of(this).colorScheme.onErrorContainer;


  /// Returns background color of the theme
  Color get backgroundColor => Theme.of(this).colorScheme.background;


  /// Returns on background color of the theme
  Color get onBackgroundColor => Theme.of(this).colorScheme.onBackground;


  /// Returns background container color of the theme
  Color get surfaceColor => Theme.of(this).colorScheme.surface;


  /// Returns on surface color of the theme
  Color get onSurfaceColor => Theme.of(this).colorScheme.onSurface;


  /// Returns surface variant color of the theme
  Color get surfaceVariantColor => Theme.of(this).colorScheme.surfaceVariant;


  /// Returns on surface variant color of the theme
  Color get onSurfaceVariantColor => Theme.of(this).colorScheme.onSurfaceVariant;


  /// Returns outline color of the theme
  Color get outlineColor => Theme.of(this).colorScheme.outline;


  /// Returns shadow color of the theme
  Color get shadowColor => Theme.of(this).colorScheme.shadow;


  /// Returns inverse background color of the theme
  Color get inverseSurfaceColor => Theme.of(this).colorScheme.inverseSurface;


  /// Returns on inverse background color of the theme
  Color get onInverseSurfaceColor => Theme.of(this).colorScheme.onInverseSurface;


  /// Returns inverse primary color of the theme
  Color get inversePrimaryColor => Theme.of(this).colorScheme.inversePrimary;


  /// Returns blue color of the theme harmonized
  Color? get blueColor => Theme.of(this).extension<CustomColors>()?.blue;

  /// Returns on blue color of the theme harmonized
  Color? get onBlueColor => Theme.of(this).extension<CustomColors>()?.onBlue;

  /// Returns blue container color of the theme harmonized
  Color? get blueContainer => Theme.of(this).extension<CustomColors>()?.blueContainer;


  /// Returns on blue container color of the theme harmonized
  Color? get onBlueContainer => Theme.of(this).extension<CustomColors>()?.onBlueContainer;


  /// Returns green color of the theme harmonized
  Color? get greenColor => Theme.of(this).extension<CustomColors>()?.green;


  /// Returns on green color of the theme harmonized
  Color? get onGreenColor => Theme.of(this).extension<CustomColors>()?.onGreen;


  /// Returns green container color of the theme harmonized
  Color? get greenContainer => Theme.of(this).extension<CustomColors>()?.greenContainer;


  /// Returns on green container color of the theme harmonized
  Color? get onGreenContainer => Theme.of(this).extension<CustomColors>()?.onGreenContainer;


  /// Returns yellow color of the theme harmonized
  Color? get yellowColor => Theme.of(this).extension<CustomColors>()?.yellow;


  /// Returns on yellow color of the theme harmonized
  Color? get onYellowColor => Theme.of(this).extension<CustomColors>()?.onYellow;


  /// Returns yellow container color of the theme harmonized
  Color? get yellowContainer => Theme.of(this).extension<CustomColors>()?.yellowContainer;


  /// Returns on yellow container color of the theme harmonized
  Color? get onYellowContainer => Theme.of(this).extension<CustomColors>()?.onYellowContainer;


  /// Returns orange color of the theme harmonized
  Color? get orangeColor => Theme.of(this).extension<CustomColors>()?.orange;


  /// Returns on orange color of the theme harmonized
  Color? get onOrangeColor => Theme.of(this).extension<CustomColors>()?.onOrange;


  /// Returns orange container color of the theme harmonized
  Color? get orangeContainer => Theme.of(this).extension<CustomColors>()?.orangeContainer;


  /// Returns on orange container color of the theme harmonized
  Color? get onOrangeContainer => Theme.of(this).extension<CustomColors>()?.onOrangeContainer;


  /// Returns red color of the theme harmonized
  Color? get redColor => Theme.of(this).extension<CustomColors>()?.red;


  /// Returns on red color of the theme harmonized
  Color? get onRedColor => Theme.of(this).extension<CustomColors>()?.onRed;


  /// Returns red container color of the theme harmonized
  Color? get redContainer => Theme.of(this).extension<CustomColors>()?.redContainer;


  /// Returns on red container color of the theme harmonized
  Color? get onRedContainer => Theme.of(this).extension<CustomColors>()?.onRedContainer;
}


/// Extensions for quickly accessing theme properties
extension TextX on BuildContext {

  /// Returns body small text style of the theme
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;


  /// Returns body medium text style of the theme
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;


  /// Returns body large text style of the theme
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;


  /// Returns label small text style of the theme
  TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall!;



  /// Returns label medium text style of the theme
  TextStyle get labelMedium => Theme.of(this).textTheme.labelMedium!;


  /// Returns label large text style of the theme
  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge!;



  /// Returns title small text style of the theme
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;


  /// Returns title medium text style of the theme
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;



  /// Returns title large text style of the theme
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;


  /// Returns headline small text style of the theme
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;


  /// Returns headline medium text style of the theme
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;


  /// Returns headline large text style of the theme
  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;


  /// Returns display small text style of the theme
  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;


  /// Returns display medium text style of the theme
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;


  /// Returns display large text style of the theme
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
}

/// Extensions for quickly accessing theme properties
extension ThemeX on BuildContext {

  /// Access to theme properties
  bool get isDark => Theme.of(this).brightness == Brightness.dark;


  /// Access to theme properties
  bool get isLight => Theme.of(this).brightness == Brightness.light;
}

/// Extensions for quickly accessing generated localization getters
extension AppLocalizationsX on BuildContext {

  /// Access to generated localization getters
  AppLocalizations get tr => AppLocalizations.of(this)!;
}