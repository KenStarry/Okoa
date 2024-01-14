import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:okoa/core/presentation/extensions/build_context_extensions.dart';
import 'package:okoa/theme/colors.dart';

class CustomUserMarker extends StatelessWidget {
  const CustomUserMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 70,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: bgColorDarkMode,
                        width: 5),
                    color: accent),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  width: 20,
                  height: 20,
                  color: bgColorDarkMode,
                ),
              ),
            )
          ],
        ));
  }
}
