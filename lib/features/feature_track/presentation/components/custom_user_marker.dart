import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:okoa/theme/colors.dart';

class CustomUserMarker extends StatelessWidget {
  const CustomUserMarker({super.key});

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
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: accent, width: 5),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [bgColorLightMode, accent])),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/curly_hair_man.png",
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),

            //  triangle cutout
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  width: 20,
                  height: 20,
                  color: accent,
                ),
              ),
            )
          ],
        ));
  }
}
