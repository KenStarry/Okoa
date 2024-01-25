import 'package:flutter/material.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

class PartnerBottomSheetContent extends StatelessWidget {

  final OkoaUser partner;

  const PartnerBottomSheetContent({super.key, required this.partner});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          //  user avatar

        ],
      ),
    );
  }
}
