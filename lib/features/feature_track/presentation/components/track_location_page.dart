import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/features/feature_track/presentation/controller/track_controller.dart';

class TrackLocationPage extends StatefulWidget {
  const TrackLocationPage({super.key});

  @override
  State<TrackLocationPage> createState() => _TrackLocationPageState();
}

class _TrackLocationPageState extends State<TrackLocationPage> {

  late final TrackController _trackController;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
  }

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
          const SizedBox(height: 32),
          //  map image
          SvgPicture.asset("assets/images/map.svg", width: 220, height: 220),

          const SizedBox(height: 32),

          Text(
            "Grant location access to enable Okoa keep you safe.",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 32),

          FilledButton(onPressed: (){
            //  request storage permission
            _trackController.requestLocationPermission();
          }, child: const Text("Grant Permission"))
        ],
      ),
    );
  }
}
