import 'package:flutter/material.dart';
import 'package:okoa/features/feature_add_partner/domain/model/okoa_partner.dart';

class AlertPartnerRequestCard extends StatelessWidget {
  final OkoaPartner partner;

  const AlertPartnerRequestCard({super.key, required this.partner});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: double.infinity,
      height: 90,
      color: Colors.red,
    );
  }
}
