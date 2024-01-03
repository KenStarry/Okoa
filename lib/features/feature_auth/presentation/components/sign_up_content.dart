import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'auth_textfield.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

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
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        AuthTextField(
          hintText: "Username",
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        //  login password field
        AuthTextField(
          hintText: "New password",
          prefixIcon: Icons.key_rounded,
          suffixIcon: Icons.visibility,
          obscureText: true,
          onChanged: (value) {},
        ),

        AuthTextField(
          hintText: "Confirm password",
          prefixIcon: Icons.key_rounded,
          suffixIcon: Icons.visibility,
          obscureText: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
