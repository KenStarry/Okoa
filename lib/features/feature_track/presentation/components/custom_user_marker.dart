import 'package:flutter/material.dart';

class CustomUserMarker extends StatelessWidget {
  const CustomUserMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: UnconstrainedBox(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.redAccent
            ),
          ),
        ),
      ),
    );
  }
}
