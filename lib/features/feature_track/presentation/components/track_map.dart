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
  late final List<Map<String, dynamic>> markersData;
  final Map<String, Marker> _markers = {};

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
    _googleMapController = Completer<GoogleMapController>();

    markersData = [
      {
        'id': '1',
        'globalKey': GlobalKey(),
        'widget': Container(
          width: 50,
          height: 50,
          color: Colors.redAccent,
        )
      }
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) => _buildMarkers());

    ever(_trackController.currentLocation, (currentLocation) async {
      if (currentLocation != null) {
        final GoogleMapController myController =
            await _googleMapController.future;

        await myController.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
                zoom: 14.5,
                target: LatLng(
                    currentLocation.latitude!, currentLocation.longitude!))));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final currentUserLocation = _trackController.currentLocation.value!;
        return isLoaded
            ? GoogleMap(
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
                  })
            : RepaintBoundary(
                key: markersData[0]['globalKey'],
                child: markersData[0]['widget'],
              );
      },
    );
  }

  Future<void> _buildMarkers() async {
    await Future.wait(markersData.map((data) async {
      Marker marker = await _generateMarkerFromWidget(data: data);
      _markers[marker.markerId.value] = marker;
    }));

    setState(() {
      isLoaded = true;
    });
  }
}
