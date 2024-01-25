import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okoa/features/feature_track/presentation/components/track_location_page.dart';
import 'package:okoa/features/feature_track/presentation/components/track_map.dart';
import 'package:okoa/features/feature_track/presentation/controller/track_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  late final TrackController _trackController;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Get.context!.isDarkMode ? Brightness.dark : Brightness.dark),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Obx(
          () => SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: _trackController.locationPermissionStatus.value ==
                      PermissionStatus.granted
                  ? const TrackMap()
                  : const TrackLocationPage()),
        ),
      ),
    );
  }
}
