import 'package:flutter/material.dart';

class AlertPartnersSection extends StatefulWidget {
  const AlertPartnersSection({super.key});

  @override
  State<AlertPartnersSection> createState() => _AlertPartnersSectionState();
}

class _AlertPartnersSectionState extends State<AlertPartnersSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  title
        Text("Pending Requests", style: Theme.of(context).textTheme.titleSmall),

        const SizedBox(height: 24),

        //  requests content
        Expanded(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ))
      ],
    );
  }
}
