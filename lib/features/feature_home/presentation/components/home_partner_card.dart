import 'package:flutter/material.dart';

class HomePartnerCard extends StatefulWidget {

  final String partnerId;

  const HomePartnerCard({super.key, required this.partnerId});

  @override
  State<HomePartnerCard> createState() => _HomePartnerCardState();
}

class _HomePartnerCardState extends State<HomePartnerCard> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.only(bottom: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(24)
        ),
      ),
    );
  }
}
