import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okoa/features/feature_track/presentation/controller/track_controller.dart';

class TrackMap extends StatefulWidget {
  const TrackMap({super.key});

  @override
  State<TrackMap> createState() => _TrackMapState();
}

class _TrackMapState extends State<TrackMap> {
  late final TrackController _trackController;
  late final Completer<GoogleMapController> _googleMapController;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
    _googleMapController = Completer<GoogleMapController>();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final currentUserLocation = _trackController.currentLocation.value!;
        return GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(currentUserLocation.latitude!,
                    currentUserLocation.longitude!),
                zoom: 14.5),
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _googleMapController.complete(controller);
            },
            markers: {
              Marker(
                  markerId: MarkerId("currentLocation"),
                  position: LatLng(currentUserLocation.latitude!,
                      currentUserLocation.longitude!))
            });
      },
    );
  }
}
