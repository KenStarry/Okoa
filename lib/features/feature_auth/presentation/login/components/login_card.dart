import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        height: 500,
        width: double.infinity,
        color: Colors.blue,
      ),
    );
  }
}
