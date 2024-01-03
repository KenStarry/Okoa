import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_card_clipper.dart';
import 'package:okoa/theme/colors.dart';
import 'package:okoa/theme/material_generator.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LoginCardClipper(),
      child: Container(
        height: 400,
        width: double.infinity,
        color: Theme.of(context).primaryColorLight,
      ),
    );
  }
}