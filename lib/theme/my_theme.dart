import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/theme/material_generator.dart';

import 'colors.dart';

class MyTheme {
  /// Light Theme
  static ThemeData get lightTheme => ThemeData(
      primaryColor: accent,
      primaryColorLight: generateMaterialColor(accent).shade50,
      primarySwatch: generateMaterialColor(accent),
      scaffoldBackgroundColor: bgColorLightMode,
      iconTheme: const IconThemeData(color: textBlack300),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: accent, foregroundColor: textBlack500)),
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: accent
      ),
      inputDecorationTheme: const InputDecorationTheme(
          iconColor: accent,
          prefixIconColor: textBlack300,
          suffixIconColor: textBlack300,
          focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: accent))),
      useMaterial3: true,
      textTheme: const TextTheme(
        bodySmall: TextStyle(
            fontSize: 11, fontWeight: FontWeight.w500, color: textBlack500),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: textBlack500),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textBlack700),
        titleSmall: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w700, color: textBlack700),
        titleMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: textBlack900),
        titleLarge: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: textBlack900),
      ));

  /// Dark Theme
  static ThemeData get darkTheme => ThemeData(
      primaryColor: accent,
      primaryColorLight: generateMaterialColor(accent).shade800,
      primarySwatch: generateMaterialColor(accent),
      scaffoldBackgroundColor: bgColorDarkMode,
      iconTheme: const IconThemeData(color: textWhite300),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: accent, foregroundColor: textBlack500)),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: accent
      ),
      inputDecorationTheme: const InputDecorationTheme(
          iconColor: accent,
          prefixIconColor: textWhite300,
          suffixIconColor: textWhite300,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: accent))),
      useMaterial3: true,
      textTheme: const TextTheme(
        bodySmall: TextStyle(
            fontSize: 11, fontWeight: FontWeight.w500, color: textWhite500),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: textWhite500),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textWhite700),
        titleSmall: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w700, color: textWhite700),
        titleMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: textWhite900),
        titleLarge: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: textWhite900),
      ));
}
