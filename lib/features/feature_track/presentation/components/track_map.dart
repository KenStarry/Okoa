import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:okoa/core/data/api/api.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_track/presentation/components/custom_user_marker.dart';
import 'package:okoa/features/feature_track/presentation/components/track_map_content.dart';
import 'package:okoa/features/feature_track/presentation/controller/track_controller.dart';
import 'package:widget_to_marker/widget_to_marker.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class TrackMap extends StatefulWidget {
  const TrackMap({super.key});

  @override
  State<TrackMap> createState() => _TrackMapState();
}

class _TrackMapState extends State<TrackMap> {
  late final TrackController _trackController;
  late final Completer<GoogleMapController> _googleMapController;
  late final List<Map<String, dynamic>> markersData;
  final Map<String, BitmapDescriptor> _markerIcons = {};

  final LatLng destination =
      const LatLng(0.28312695556758094, 34.75168063532842);

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
    _googleMapController = Completer<GoogleMapController>();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _buildMarkers();
      _trackController.getPolylinePoints(
          sourceLocation: LatLng(
              _trackController.currentLocation.value!.latitude!,
              _trackController.currentLocation.value!.longitude!),
          destination: destination);
    });

    markersData = [
      {
        'id': 'starry',
        'globalKey': GlobalKey(),
        'widget': const CustomUserMarker()
      },
      {
        'id': 'equity',
        'globalKey': GlobalKey(),
        'widget': const CustomUserMarker()
      },
    ];

    ever(_trackController.currentLocation, (currentLocation) async {
      if (currentLocation != null) {
        final GoogleMapController myController =
            await _googleMapController.future;

        //  Get current zoom level
        final zoomLevel = await myController.getZoomLevel();

        await myController.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
                zoom: zoomLevel,
                target: LatLng(
                    currentLocation.latitude!, currentLocation.longitude!))));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Obx(
            () {
              final currentUserLocation =
                  _trackController.currentLocation.value;
              return currentUserLocation == null
                  ? const Expanded(
                      flex: 3,
                      child: Center(child: CircularProgressIndicator()))
                  : Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: _markerIcons.isEmpty
                            ? const UnconstrainedBox(
                                child: CircularProgressIndicator())
                            : Obx(
                                () => GoogleMap(
                                    mapType: MapType.normal,
                                    initialCameraPosition: CameraPosition(
                                        target: LatLng(
                                            currentUserLocation.latitude!,
                                            currentUserLocation.longitude!),
                                        zoom: 18),
                                    myLocationButtonEnabled: false,
                                    myLocationEnabled: false,
                                    onMapCreated:
                                        (GoogleMapController controller) {
                                      _googleMapController.complete(controller);
                                    },
                                    polylines: _trackController
                                            .polylineCoordinates.isNotEmpty
                                        ? {
                                            Polyline(
                                                polylineId: const PolylineId(
                                                    "Equity bank polyline"),
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                startCap: Cap.roundCap,
                                                endCap: Cap.roundCap,
                                                width: 5,
                                                points: _trackController
                                                    .polylineCoordinates)
                                          }
                                        : {},
                                    markers: {
                                      Marker(
                                          markerId: const MarkerId('starry'),
                                          position: LatLng(
                                              currentUserLocation.latitude!,
                                              currentUserLocation.longitude!),
                                          icon: _markerIcons['starry']!,
                                          onTap: () {
                                            //  open bottomsheet for current user
                                          }),
                                      Marker(
                                          markerId: const MarkerId('equity'),
                                          position: LatLng(destination.latitude,
                                              destination.longitude),
                                          icon: _markerIcons['equity']!,
                                          onTap: () {
                                            //  open bottomsheet for current user
                                          }),
                                    }),
                              ),
                      ),
                    );
            },
          ),
          const Expanded(flex: 1, child: TrackMapContent())
        ],
      ),
    );
  }

  Future<BitmapDescriptor> getBitmapDescriptor() async =>
      await const CustomUserMarker()
          .toBitmapDescriptor(waitToRender: const Duration(seconds: 1));

  Future<void> _buildMarkers() async {
    await Future.wait(markersData.map((data) async {
      BitmapDescriptor marker = await getBitmapDescriptor();
      _markerIcons[data['id']] = marker;
    }));

    setState(() {});
  }
}
