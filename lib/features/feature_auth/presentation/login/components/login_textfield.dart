import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  final Function(String?) onChanged;

  const LoginTextField(
      {super.key,
      this.obscureText = false,
      required this.hintText,
      required this.onChanged});

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
      obscureText: widget.obscureText,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      onChanged: widget.onChanged,
    );
  }
}
