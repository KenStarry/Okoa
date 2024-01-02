import 'dart:ui';

import 'package:flutter/cupertino.dart';

extension BuildContextExtensions on BuildContext {
  //  Toggle logo path based on theme
  bool get isDarkMode {
    var brightness = MediaQuery.of(this).platformBrightness;

    return brightness == Brightness.dark;
  }
}
