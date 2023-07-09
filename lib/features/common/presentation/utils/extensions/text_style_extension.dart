import 'package:flutter/material.dart';
import 'package:intopic/config/typography/typography.dart';

extension TextStyleX on TextStyle {
  TextStyle get black => copyWith(fontWeight: AppFontWeight.black);

  TextStyle get extraBold => copyWith(fontWeight: AppFontWeight.extraBold);

  TextStyle get bold => copyWith(fontWeight: AppFontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: AppFontWeight.semiBold);

  TextStyle get medium => copyWith(fontWeight: AppFontWeight.medium);

  TextStyle get regular => copyWith(fontWeight: AppFontWeight.regular);

  TextStyle get light => copyWith(fontWeight: AppFontWeight.light);

  TextStyle get extraLight => copyWith(fontWeight: AppFontWeight.extraLight);

  TextStyle get thin => copyWith(fontWeight: AppFontWeight.thin);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  TextStyle get overline => copyWith(decoration: TextDecoration.overline);

  TextStyle withColor(Color? color) => copyWith(color: color);

  TextStyle withSize(double size) => copyWith(fontSize: size);

  TextStyle withWeight(FontWeight weight) => copyWith(fontWeight: weight);

  TextStyle withStyle(FontStyle style) => copyWith(fontStyle: style);
}
