import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'auth_textfield.dart';

class LoginContent extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passController;

  const LoginContent(
      {super.key, required this.emailController, required this.passController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //  login text
        Text(
          "Login",
          style: Theme.of(context).textTheme.titleMedium,
        ),

        //  login email field
        AuthTextField(
          controller: emailController,
          hintText: "Enter your email",
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        //  login password field
        AuthTextField(
          controller: passController,
          hintText: "Enter your password",
          prefixIcon: Icons.key_rounded,
          suffixIcon: Icons.visibility,
          obscureText: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
