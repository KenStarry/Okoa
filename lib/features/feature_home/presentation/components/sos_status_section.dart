import 'package:flutter/material.dart';

class SOSStatusSection extends StatefulWidget {
  const SOSStatusSection({super.key});

  @override
  State<SOSStatusSection> createState() => _SOSStatusSectionState();
}

class _SOSStatusSectionState extends State<SOSStatusSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
          color: Theme.of(context).primaryColor,
        ),

      ),
    );
  }
}
