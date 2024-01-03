import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'auth_textfield.dart';

class SignUpContent extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController newPassController;
  final TextEditingController confirmPassController;

  const SignUpContent(
      {super.key,
      required this.emailController,
      required this.usernameController,
      required this.newPassController,
      required this.confirmPassController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //  login text
        Text(
          "Sign Up",
          style: Theme.of(context).textTheme.titleMedium,
        ),

        //  login email field
        AuthTextField(
          hintText: "Email Address",
          controller: emailController,
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        AuthTextField(
          hintText: "Username",
          controller: usernameController,
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        //  login password field
        AuthTextField(
          hintText: "New password",
          controller: newPassController,
          prefixIcon: Icons.key_rounded,
          suffixIcon: Icons.visibility,
          obscureText: true,
          onChanged: (value) {},
        ),

        AuthTextField(
          hintText: "Confirm password",
          controller: confirmPassController,
          prefixIcon: Icons.key_rounded,
          suffixIcon: Icons.visibility,
          obscureText: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
