import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackLocationPage extends StatefulWidget {
  const TrackLocationPage({super.key});

  @override
  State<TrackLocationPage> createState() => _TrackLocationPageState();
}

class _TrackLocationPageState extends State<TrackLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Location", style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 24),
          //  map image
          SvgPicture.asset("assets/images/map.svg", width: 200, height: 200),

          const SizedBox(height: 24),

          Text(
            "Grant location access to enable Okoa keep you safe.",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 24),

          FilledButton(onPressed: (){}, child: Text("Grant Permission"))
        ],
      ),
    );
  }
}
