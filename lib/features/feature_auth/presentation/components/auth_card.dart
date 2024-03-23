import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
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
  late final CoreController _coreController;
  late final TextEditingController loginEmailController;
  late final TextEditingController loginPassController;
  late final TextEditingController emailController;
  late final TextEditingController usernameController;
  late final TextEditingController newPassController;
  late final TextEditingController phoneController;
  late final TextEditingController confirmPassController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
    _coreController = Get.find<CoreController>();

    loginEmailController = TextEditingController();
    loginPassController = TextEditingController();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    newPassController = TextEditingController();
    phoneController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: _authController.isLogin.value ? 350 : 500,
        child: Column(
          children: [
            //  Clip Form Field
            Expanded(
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0))),
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      child: _authController.isLogin.value
                          ? LoginContent(
                              emailController: loginEmailController,
                              passController: loginPassController)
                          : SignUpContent(
                              emailController: emailController,
                              usernameController: usernameController,
                              newPassController: newPassController,
                              phoneController: phoneController,
                              confirmPassController: confirmPassController,
                            ))),
            ),

            //  login button
            FilledButton(
                onPressed: _authController.isLogin.value
                    ? () async {
                        //  Login
                        await _authController.signIn(
                            email: loginEmailController.text,
                            password: loginPassController.text);
                      }
                    : () async {
                        //  Sign Up
                        await _authController
                            .signUp(
                                email: emailController.text,
                                password: newPassController.text)
                            .then((value) {
                          //  update values created in DB
                          _coreController.updateUserDataOnDB(data: {
                            'username': usernameController.text,
                            'phone_number': phoneController.text
                          }, onResponse: (response) {});
                        });
                      },
                child:
                    Text(_authController.isLogin.value ? "Login" : "Sign Up"))
          ],
        ),
      ),
    );
  }
}
