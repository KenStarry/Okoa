import 'package:flutter/cupertino.dart';
import 'package:okoa/features/feature_alerts/presentation/components/partners_section/alert_partners_section.dart';
import 'package:okoa/features/feature_alerts/presentation/model/alert_section_model.dart';

var alertCategories = <AlertSectionModel>[
  AlertSectionModel(title: "Critical", content: const AlertPartnersSection()),
  AlertSectionModel(title: "Messages", content: Text("Hello")),
  AlertSectionModel(
      title: "Partner Requests", content: const AlertPartnersSection()),
];
