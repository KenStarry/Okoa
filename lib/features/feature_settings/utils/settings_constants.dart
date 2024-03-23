import 'package:okoa/features/feature_settings/domain/model/settings.dart';
import 'package:flutter/material.dart';

class SettingsConstants {

  static const generalSettings = <Setting>[
    Setting(title: 'Live Tracking', icon: Icons.location_on_rounded),
    Setting(title: 'SOS', icon: Icons.emergency_rounded),
  ];
}