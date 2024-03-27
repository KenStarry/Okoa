import 'package:flutter/material.dart';

class SosSafeContent extends StatefulWidget {
  const SosSafeContent({super.key});

  @override
  State<SosSafeContent> createState() => _SosSafeContentState();
}

class _SosSafeContentState extends State<SosSafeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.red,
      child: Text("Hello"),
    );
  }
}
