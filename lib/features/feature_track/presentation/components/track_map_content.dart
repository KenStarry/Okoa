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
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Focus", style: Theme.of(context).textTheme.titleSmall),

              //  live location sharing on
              Row(
                children: [
                  const Icon(Icons.my_location_rounded, color: Colors.greenAccent),
                  const SizedBox(width: 8),
                  Text("Live location on", style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                    fontWeight: Theme.of(context).textTheme.bodySmall!.fontWeight,
                    color: Colors.greenAccent
                  ),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
