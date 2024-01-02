import 'package:flutter/material.dart';

import 'colors.dart';

class MyTheme {
  /// Light Theme
  static ThemeData get lightTheme => ThemeData(
      primaryColor: accent,
      scaffoldBackgroundColor: bgColorLightMode,
      iconTheme: const IconThemeData(color: textBlack300),
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
}
