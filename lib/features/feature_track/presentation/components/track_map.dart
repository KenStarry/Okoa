import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/features/feature_track/presentation/components/custom_user_marker.dart';
import 'package:okoa/features/feature_track/presentation/controller/track_controller.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

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

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
    _googleMapController = Completer<GoogleMapController>();

    WidgetsBinding.instance
        .addPostFrameCallback((_) async => await _buildMarkers());

    markersData = [
      {
        'id': 'starry',
        'globalKey': GlobalKey(),
        'widget': const CustomUserMarker()
      }
    ];

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

  // @override
  // Widget build(BuildContext context) {
  //   return Obx(
  //     () {
  //       final currentUserLocation = _trackController.currentLocation.value;
  //       return currentUserLocation == null
  //           ? const UnconstrainedBox(child: CircularProgressIndicator())
  //           : CustomGoogleMapMarkerBuilder(
  //               screenshotDelay: const Duration(seconds: 1),
  //               customMarkers: [
  //                 MarkerData(
  //                     marker: Marker(
  //                         markerId: const MarkerId('starry'),
  //                         position: LatLng(currentUserLocation.latitude!,
  //                             currentUserLocation.longitude!)),
  //                     child: const CustomUserMarker())
  //               ],
  //               builder: (BuildContext context, Set<Marker>? markers) {
  //                 return GoogleMap(
  //                     mapType: MapType.normal,
  //                     initialCameraPosition: CameraPosition(
  //                         target: LatLng(currentUserLocation.latitude!,
  //                             currentUserLocation.longitude!),
  //                         zoom: 17.5),
  //                     myLocationButtonEnabled: true,
  //                     myLocationEnabled: true,
  //                     onMapCreated: (GoogleMapController controller) {
  //                       _googleMapController.complete(controller);
  //                     },
  //                     markers: markers ?? {});
  //               },
  //             );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final currentUserLocation = _trackController.currentLocation.value;
        return currentUserLocation == null
            ? UnconstrainedBox(child: const CircularProgressIndicator())
            : GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                    target: LatLng(currentUserLocation.latitude!,
                        currentUserLocation.longitude!),
                    zoom: 17.5),
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _googleMapController.complete(controller);
                },
                markers: {
                    Marker(
                        markerId: const MarkerId('starry'),
                        position: LatLng(currentUserLocation.latitude!,
                            currentUserLocation.longitude!),
                        icon: _markerIcons['starry']!)
                  });
      },
    );
  }

  Future<BitmapDescriptor> getBitmapDescriptor() async =>
      await const CustomUserMarker().toBitmapDescriptor();

  Future<void> _buildMarkers() async {
    await Future.wait(markersData.map((data) async {
      BitmapDescriptor marker = await getBitmapDescriptor();
      _markerIcons[data['id']] = marker;
    }));
  }

  Future<BitmapDescriptor> _generateBytesFromWidget(
      {required Map<String, dynamic> data}) async {
    final RenderRepaintBoundary boundary =
        data['globalKey'].currentContext?.findRenderObject();

    if (boundary.debugNeedsPaint) {
      await Future.delayed(const Duration(milliseconds: 20));
      return _generateBytesFromWidget(data: data);
    }

    final ui.Image myImage = await boundary.toImage(pixelRatio: 2);
    final ByteData? byteData =
        await myImage.toByteData(format: ui.ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List(),
        size: Size(50, 50));
  }
}
