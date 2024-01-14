import 'package:flutter/material.dart';

class TrackMapContent extends StatefulWidget {
  const TrackMapContent({super.key});

  @override
  State<TrackMapContent> createState() => _TrackMapContentState();
}

class _TrackMapContentState extends State<TrackMapContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.redAccent,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Focus", style: Theme.of(context).textTheme.titleSmall)
        ],
      ),
    );
  }
}
