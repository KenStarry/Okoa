import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:okoa/features/feature_home/presentation/components/home_appbar.dart';
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
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(56)),
            color: Theme.of(context).primaryColor,
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  accent,
                  Theme.of(context).scaffoldBackgroundColor,
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  home appbar
            HomeAppBar(),
            AvatarGlow(
              glowShape: BoxShape.circle,
              glowCount: 3,
              glowRadiusFactor: 0.3,
              glowColor: accent,
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 5)
                      ]),
                  child: Center(
                    child: Text(
                      "SAFE",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .fontWeight,
                          color: accent),
                    ),
                  )),
            ),
            Text(
              "Everything seems fine, you're safe.",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
