import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okoa/features/feature_track/presentation/components/custom_user_marker.dart';
import 'package:okoa/features/feature_track/presentation/components/track_map_content.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Obx(
            () {
              final currentUserLocation =
                  _trackController.currentLocation.value;
              return currentUserLocation == null
                  ? const UnconstrainedBox(child: CircularProgressIndicator())
                  : Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: CameraPosition(
                                target: LatLng(currentUserLocation.latitude!,
                                    currentUserLocation.longitude!),
                                zoom: 17.5),
                            myLocationButtonEnabled: false,
                            myLocationEnabled: false,
                            onMapCreated: (GoogleMapController controller) {
                              _googleMapController.complete(controller);
                            },
                            markers: {
                              Marker(
                                  markerId: const MarkerId('starry'),
                                  position: LatLng(
                                      currentUserLocation.latitude!,
                                      currentUserLocation.longitude!),
                                  icon: _markerIcons['starry']!)
                            }),
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
