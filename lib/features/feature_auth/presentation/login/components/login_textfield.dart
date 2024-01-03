import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({super.key});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      obscureText: false,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: "Enter your email",
        hintStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      onChanged: (value){},
    );
  }
}
