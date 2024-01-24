import 'package:flutter/material.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

import 'home_partner_card_action_btn.dart';

class HomePartnerBottomSheet extends StatefulWidget {
  final OkoaUser partner;

  const HomePartnerBottomSheet({super.key, required this.partner});

  @override
  State<HomePartnerBottomSheet> createState() => _HomePartnerBottomSheetState();
}

class _HomePartnerBottomSheetState extends State<HomePartnerBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        children: [
          //  content
          Expanded(child: Text("Hello")),
          //  actions
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  call
              HomePartnerCardActionBtn(
                icon: Icons.call_rounded,
                size: const Size(50, 50),
                onTap: () {},
              ),

              const SizedBox(width: 16),
              //  message
              HomePartnerCardActionBtn(
                icon: Icons.sms_rounded,
                size: const Size(50, 50),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
