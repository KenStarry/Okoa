import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/extensions/build_context_extensions.dart';
import 'package:okoa/features/feature_auth/presentation/components/auth_card.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _authController.setIsLogin(isLogin: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              BuildContextExtensions(Get.context!).isDarkMode
                  ? Brightness.light
                  : Brightness.dark),
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
                const SizedBox(height: 24),
                //  logo
                SvgPicture.asset(
                    BuildContextExtensions(Get.context!).isDarkMode
                        ? "assets/images/logo_alt_dark_mode.svg"
                        : "assets/images/logo_alt_light_mode.svg",
                    width: 150),

                //  login card
                const AuthCard(),

                const SizedBox(height: 24),

                Column(
                  children: [
                    Text("OR", style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 16),
                    //  login with google
                    GestureDetector(
                      onTap: () async {
                        await _authController.signInWithGoogle();
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 15)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: SvgPicture.asset(
                                "assets/images/google_logo.svg",
                                width: 24,
                                height: 24,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Obx(
                              () => Text(
                                  _authController.isLogin.value
                                      ? "Sign in with Google"
                                      : "Sign Up with Google",
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                //  Create account text
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: _authController.isLogin.value
                                  ? "No account? "
                                  : "Have an account? ",
                              style: Theme.of(context).textTheme.bodyMedium),
                          TextSpan(
                              text: _authController.isLogin.value
                                  ? "Create one."
                                  : "Login",
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
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _authController.setIsLogin(
                                      isLogin: _authController.isLogin.value
                                          ? false
                                          : true);
                                }),
                        ])),
                      ),
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
