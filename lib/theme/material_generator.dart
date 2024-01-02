import 'dart:math';
import 'package:flutter/material.dart';

/// Generate Material Colors
MaterialColor generateMaterialColor(Color color) =>
    MaterialColor(color.value, {});

/// Tint Generator
int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));
