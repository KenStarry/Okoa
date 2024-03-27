import 'package:flutter/material.dart';

class SosPersonal extends StatefulWidget {
  const SosPersonal({super.key});

  @override
  State<SosPersonal> createState() => _SosPersonalState();
}

class _SosPersonalState extends State<SosPersonal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.blue,
      child: Column(
        children: [
          //  send message to partners
          //  call partners
          //  choose message templates to send
          //  call police
          //  call the ambulance
          //  call firefighters
        ],
      ),
    );
  }
}
