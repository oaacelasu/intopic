import 'package:flutter/material.dart';
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
