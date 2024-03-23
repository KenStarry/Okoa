import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/domain/model/sos_message.dart';

class SosMessageCard extends StatelessWidget {
  final SosMessage sosMessage;
  final bool isActive;
  final VoidCallback onTap;

  const SosMessageCard(
      {super.key,
      required this.sosMessage,
      this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 300,
          height: 250,
          color: Colors.blue,
          child: Column(
            children: [
              //  message section

              //  radio button section
            ],
          ),
        ),
      ),
    );
  }
}
