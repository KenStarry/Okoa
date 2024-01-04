import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'auth_textfield.dart';

class LoginContent extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passController;

  const LoginContent(
      {super.key, required this.emailController, required this.passController});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool obscureText = true;

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
          controller: widget.emailController,
          hintText: "Enter your email",
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        //  login password field
        AuthTextField(
          controller: widget.passController,
          hintText: "Enter your password",
          prefixIcon: Icons.key_rounded,
          isPasswordField: true,
          suffixIcon:
              obscureText ? Icons.visibility : Icons.visibility_off_rounded,
          obscureText: obscureText,
          onChanged: (value) {},
          onObscure: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      ],
    );
  }
}
