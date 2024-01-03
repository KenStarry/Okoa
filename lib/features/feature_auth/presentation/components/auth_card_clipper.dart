import 'package:flutter/material.dart';

class AuthCardClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height * 0.25)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
