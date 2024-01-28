import 'package:flutter/material.dart';

class SosPartnerContent extends StatefulWidget {
  const SosPartnerContent({super.key});

  @override
  State<SosPartnerContent> createState() => _SosPartnerContentState();
}

class _SosPartnerContentState extends State<SosPartnerContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      color: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
