import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

class PartnerBottomSheetContent extends StatelessWidget {
  final OkoaUser partner;

  const PartnerBottomSheetContent({super.key, required this.partner});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          //  user avatar
          Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Avatar(
                        avatarUrl: partner.avatarUrl,
                        size: const Size(120, 120)),
                  ),

                  //  is user safe
                ],
              ))
        ],
      ),
    );
  }
}
