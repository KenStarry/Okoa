import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/components/login_textfield.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

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
        LoginTextField(
          hintText: "Enter your email",
          prefixIcon: Icons.email_rounded,
          onChanged: (value) {},
        ),

        //  login password field
        LoginTextField(
          hintText: "Enter your password",
          prefixIcon: Icons.key_rounded,
          suffixIcon: Icons.visibility,
          obscureText: true,
          onChanged: (value) {},
        ),

        //  login with google
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 15)
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SvgPicture.asset(
              "assets/images/google_logo.svg",
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
