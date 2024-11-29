// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_learn/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_learn/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login_learn/src/utils/theme/widget_themes/text_filed_theme.dart';
import 'widget_themes/text_theme.dart';

class ThemeR {
  ThemeR._();
  static var lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: false,
      textTheme: TextThemeR.lightTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);

  static var darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: false,
      textTheme: TextThemeR.darkTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
