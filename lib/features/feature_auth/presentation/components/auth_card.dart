import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:okoa/features/feature_auth/presentation/components/login_content.dart';
import 'package:okoa/features/feature_auth/presentation/components/sign_up_content.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_auth/presentation/components/auth_card_clipper.dart';
import 'package:okoa/features/feature_auth/presentation/components/auth_textfield.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({super.key});

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  late final AuthController _authController;
  late final TextEditingController loginEmailController;
  late final TextEditingController loginPassController;
  late final TextEditingController emailController;
  late final TextEditingController usernameController;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();

    loginEmailController = TextEditingController();
    loginPassController = TextEditingController();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        color: Colors.transparent,
        width: double.infinity,
        height: _authController.isLogin.value ? 450 : 500,
        child: Stack(
          children: [
            //  Clip Form Field
            ClipPath(
              clipper: AuthCardClipper(),
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: _authController.isLogin.value ? 425 : 475,
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
                          ? LoginContent(
                              emailController: loginEmailController,
                              passController: loginPassController,
                            )
                          : SignUpContent(
                              emailController: emailController,
                              usernameController: usernameController,
                              newPassController: newPassController,
                              confirmPassController: confirmPassController,
                            ))),
            ),

            //  login icon
            AnimatedPositioned(
              duration: const Duration(milliseconds: 350),
              left: (MediaQuery.of(context).size.width * 0.5) - 50,
              top: _authController.isLogin.value ? 15 : 20,
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
                child: FilledButton(
                    onPressed: _authController.isLogin.value
                        ? () async {
                            //  Login
                            await _authController.signIn(
                                email: loginEmailController.text,
                                password: loginPassController.text);
                          }
                        : () async {
                            //  Sign Up
                            await _authController.signUp(
                                email: emailController.text,
                                password: newPassController.text);
                          },
                    child: Text(
                        _authController.isLogin.value ? "Login" : "Sign Up")))
          ],
        ),
      ),
    );
  }
}
