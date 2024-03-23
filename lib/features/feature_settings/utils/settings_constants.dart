import 'package:okoa/features/feature_settings/domain/model/settings.dart';
import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/domain/model/sos_message.dart';

class SettingsConstants {
  static const generalSettings = <Setting>[
    Setting(title: 'Live Tracking', icon: Icons.location_on_rounded),
    Setting(title: 'SOS', icon: Icons.emergency_rounded),
  ];

  static const otherSettings = <Setting>[
    Setting(title: 'Logout', icon: Icons.logout_rounded),
  ];

  /// SOS SETTINGS
  static const sosMessages = <SosMessage>[
    SosMessage(
        message: 'This is message 1', messageEnum: SosMessageEnum.messageOne),
    SosMessage(
        message: 'This is message 2', messageEnum: SosMessageEnum.messageTwo),
    SosMessage(
        message: 'This is message 3', messageEnum: SosMessageEnum.messageThree),
  ];
}
