import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okoa/core/presentation/extensions/build_context_extensions.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_card.dart';
import 'package:okoa/theme/colors.dart';
import 'package:okoa/theme/material_generator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  logo
            SvgPicture.asset(
              context.isDarkMode
                  ? "assets/images/logo_alt_dark_mode.svg"
                  : "assets/images/logo_alt_light_mode.svg",
              width: 150
            ),

            //  login card
            LoginCard()
          ],
        ),
      ),
    );
  }
}
