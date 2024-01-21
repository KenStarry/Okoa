import 'package:flutter/material.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(
              avatarUrl:
                  "https://images.unsplash.com/photo-1514316454349-750a7fd3da3a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              size: Size(60, 60))
        ],
      ),
    );
  }
}
