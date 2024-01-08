import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

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
        ),
        child: Center(
          child: AvatarGlow(
            glowShape: BoxShape.circle,
            glowCount: 3,
            glowRadiusFactor: 0.4,
            glowColor: Colors.red,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Icon(
                Icons.dangerous_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
