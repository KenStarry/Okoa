import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:okoa/features/feature_auth/presentation/components/login_content.dart';
import 'package:okoa/features/feature_auth/presentation/components/sign_up_content.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_card_clipper.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_textfield.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({super.key});

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: Colors.transparent,
        width: double.infinity,
        height: _authController.isLogin.value ? 450 : 500,
        child: Stack(
          children: [
            //  Clip Form Field
            ClipPath(
              clipper: LoginCardClipper(),
              child: Container(
                  height: 425,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0))),
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      margin: const EdgeInsets.only(top: 100),
                      child: _authController.isLogin.value
                          ? const LoginContent()
                          : const SignUpContent())),
            ),

            //  login icon
            Positioned(
              left: (MediaQuery.of(context).size.width * 0.5) - 50,
              top: 15,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignOutside)),
                child: const Center(
                  child: Icon(
                    Icons.login,
                    size: 32,
                  ),
                ),
              ),
            ),

            //  login button
            Align(
                alignment: AlignmentDirectional.bottomCenter,
                child:
                    FilledButton(onPressed: () {}, child: const Text("Login")))
          ],
        ),
      ),
    );
  }
}
