import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:okoa/features/feature_home/presentation/components/partner_bottom_sheet_content.dart';
import 'package:okoa/theme/colors.dart';

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
      height: MediaQuery.of(context).size.height * 0.85,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        children: [
          //  content
          Expanded(child: PartnerBottomSheetContent(partner: widget.partner)),
          //  actions
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //  call
              HomePartnerCardActionBtn(
                icon: Icons.call_rounded,
                size: const Size(50, 50),
                onTap: () {},
              ),

              const SizedBox(width: 16),

              //  sos button
              AvatarGlow(
                glowShape: BoxShape.circle,
                glowCount: 2,
                glowRadiusFactor: 0.3,
                glowColor: sosRed,
                child: GestureDetector(
                  onTap: () {
                    //  open SOS bottomsheet
                  },
                  child: Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: sosRed,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]),
                      child: Center(
                          child: Text(
                        "SOS",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .fontWeight,
                          color: Colors.white,
                        ),
                      ))),
                ),
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
