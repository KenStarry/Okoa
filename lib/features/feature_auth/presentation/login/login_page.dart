import 'package:flutter/material.dart';
import 'package:okoa/theme/colors.dart';
import 'package:okoa/theme/material_generator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: generateMaterialColor(accent).shade50,
      ),
    );
  }
}
