import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
import 'package:okoa/theme/colors.dart';

class CustomUserMarker extends StatelessWidget {
  final String? avatarUrl;

  const CustomUserMarker({super.key, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 70,
        height: 70,
        child: Stack(
          children: [
            //  profile pic
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: accent, width: 3),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [bgColorLightMode, accent])),
                  child:
                      Avatar(avatarUrl: avatarUrl, size: const Size(50, 50))),
            ),

            //  triangle cutout
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  width: 16,
                  height: 16,
                  color: accent,
                ),
              ),
            )
          ],
        ));
  }
}
