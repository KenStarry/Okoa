import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String?) onChanged;

  const AuthTextField(
      {super.key,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon,
      required this.hintText,
      required this.onChanged});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
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
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: Icon(widget.suffixIcon)),
      onChanged: widget.onChanged,
    );
  }
}
