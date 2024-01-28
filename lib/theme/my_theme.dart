import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/theme/material_generator.dart';

import 'colors.dart';

class MyTheme {
  final Color accent;

  MyTheme({required this.accent});

  /// Light Theme
  ThemeData get lightTheme => ThemeData(
      primaryColor: accent,
      primaryColorLight: bgColorLightModeAlt, // generateMaterialColor(accent).shade50
      primarySwatch: generateMaterialColor(accent),
      scaffoldBackgroundColor: bgColorLightMode,
      iconTheme: const IconThemeData(color: textBlack300),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: accent, backgroundColor: Colors.transparent)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: accent, foregroundColor: textBlack700),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: accent, foregroundColor: textBlack500)),
      textSelectionTheme: TextSelectionThemeData(cursorColor: accent),
      inputDecorationTheme: InputDecorationTheme(
          iconColor: accent,
          prefixIconColor: textBlack300,
          suffixIconColor: textBlack300,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: accent))),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: bgColorLightMode,
        elevation: 0,
        dragHandleColor: textBlack500,
        showDragHandle: true,
        surfaceTintColor: bgColorLightMode,
        modalBackgroundColor: bgColorLightMode,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      ),
      useMaterial3: true,
      fontFamily: 'DMSans',
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
  ThemeData get darkTheme => ThemeData(
      primaryColor: accent,
      primaryColorLight: bgColorDarkModeAlt,
      primarySwatch: generateMaterialColor(accent),
      scaffoldBackgroundColor: bgColorDarkMode,
      iconTheme: const IconThemeData(color: textWhite300),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: accent, foregroundColor: textBlack700),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: accent, backgroundColor: Colors.transparent)),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: accent, foregroundColor: textBlack500)),
      textSelectionTheme: TextSelectionThemeData(cursorColor: accent),
      inputDecorationTheme: InputDecorationTheme(
          iconColor: accent,
          prefixIconColor: textWhite300,
          suffixIconColor: textWhite300,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: accent))),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: bgColorDarkMode,
        elevation: 0,
        dragHandleColor: textWhite500,
        showDragHandle: true,
        surfaceTintColor: bgColorDarkMode,
        modalBackgroundColor: bgColorDarkMode,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      ),
      useMaterial3: true,
      fontFamily: 'DMSans',
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
