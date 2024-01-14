import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.redAccent),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.redAccent,
                ),
              ),
            )
          ],
        ));
  }
}
