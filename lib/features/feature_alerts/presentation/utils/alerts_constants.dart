import 'package:flutter/cupertino.dart';
import 'package:okoa/features/feature_alerts/presentation/components/critical_alerts/critical_alerts_section.dart';
import 'package:okoa/features/feature_alerts/presentation/components/message_alerts/message_alerts_section.dart';
import 'package:okoa/features/feature_alerts/presentation/components/partners_section/alert_partners_section.dart';
import 'package:okoa/features/feature_alerts/presentation/model/alert_section_model.dart';

var alertCategories = <AlertSectionModel>[
  AlertSectionModel(title: "Critical", content: const CriticalAlertsSection()),
  AlertSectionModel(title: "Messages", content: const MessageAlertsSection()),
  AlertSectionModel(
      title: "Partner Requests", content: const AlertPartnersSection()),
];
