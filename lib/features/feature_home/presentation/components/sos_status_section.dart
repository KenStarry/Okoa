import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:okoa/features/feature_home/presentation/components/home_appbar.dart';
import 'package:okoa/features/feature_home/presentation/components/sos_quick_actions.dart';
import 'package:okoa/theme/colors.dart';

class SOSStatusSection extends StatefulWidget {
  const SOSStatusSection({super.key});

  @override
  State<SOSStatusSection> createState() => _SOSStatusSectionState();
}

class _SOSStatusSectionState extends State<SOSStatusSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 450,
        padding: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            color: Theme.of(context).scaffoldBackgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  home appbar
            const HomeAppBar(),

            //  shield
            AvatarGlow(
              glowShape: BoxShape.circle,
              glowCount: 2,
              glowRadiusFactor: 0.3,
              glowColor: accent,
              child: GestureDetector(
                onTap: () {
                  //  open SOS bottomsheet
                  Get.bottomSheet(Text("Hello"));
                },
                child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                    child: Stack(
                      children: [
                        //  logo to represent current status
                        Center(
                          child: Icon(Icons.shield_moon_rounded,
                              size: 120, color: Theme.of(context).primaryColor),
                        ),
                      ],
                    )),
              ),
            ),

            //  quick actions
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.redAccent,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SosQuickActions(),
                  separatorBuilder: (context, index) => SizedBox(width: 24),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
