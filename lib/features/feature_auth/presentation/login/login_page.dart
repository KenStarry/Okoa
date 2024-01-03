import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              context.isDarkMode ? Brightness.light : Brightness.dark),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                //  logo
                SvgPicture.asset(
                    context.isDarkMode
                        ? "assets/images/logo_alt_dark_mode.svg"
                        : "assets/images/logo_alt_light_mode.svg",
                    width: 150),

                //  login card
                const LoginCard(),

                const SizedBox(height: 24),

                //  Create account text
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_back_rounded),
                        ),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "No account? ",
                            style: Theme.of(context).textTheme.bodyMedium),
                        TextSpan(
                            text: "Create one.",
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontWeight,
                                color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ])),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
