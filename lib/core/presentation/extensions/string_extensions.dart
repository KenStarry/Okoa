import 'dart:ui';

import 'package:flutter/scheduler.dart';

extension StringExtensions on String {
  //  Toggle logo path based on theme
  String get toggleLogoPath {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    return brightness == Brightness.dark
        ? "assets/images/logo_alt_dark_mode.svg"
        : "assets/images/logo_alt_light_mode.svg";
  }
}
