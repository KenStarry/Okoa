import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final bool obscureText;
  final bool isPasswordField;
  final String hintText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String?) onChanged;
  final VoidCallback? onObscure;

  const AuthTextField(
      {super.key,
      this.obscureText = false,
      this.isPasswordField = false,
      this.prefixIcon,
      this.suffixIcon,
      required this.controller,
      required this.hintText,
      required this.onChanged,
      this.onObscure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: isPasswordField
              ? IconButton(onPressed: onObscure, icon: Icon(suffixIcon))
              : Icon(suffixIcon)),
      onChanged: onChanged,
    );
  }
}
