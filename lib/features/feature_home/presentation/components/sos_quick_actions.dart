import 'package:flutter/material.dart';

class SosQuickActions extends StatelessWidget {
  final String title;
  final IconData iconData;

  const SosQuickActions(
      {super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).primaryColorLight),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
