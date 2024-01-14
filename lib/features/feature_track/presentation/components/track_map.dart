import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
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

    // WidgetsBinding.instance
    //     .addPostFrameCallback((_) async => await _buildMarkers());
    _trackController = Get.find<TrackController>();
    _googleMapController = Completer<GoogleMapController>();

    // markersData = [
    //   {
    //     'id': '1',
    //     'globalKey': GlobalKey(),
    //     'widget': UnconstrainedBox(
    //       child: Container(
    //         width: 50,
    //         height: 50,
    //         color: Colors.redAccent,
    //       ),
    //     )
    //   }
    // ];


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
        final currentUserLocation = _trackController.currentLocation.value;
        return currentUserLocation == null
            ? const CircularProgressIndicator()
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
                            currentUserLocation.longitude!))
                  });
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

  Future<Marker> _generateMarkerFromWidget(
      {required Map<String, dynamic> data, LatLng? position}) async {
    RenderRepaintBoundary boundary = data['globalKey']
        .currentContext
        ?.findRenderObject() as RenderRepaintBoundary;

    if (boundary.debugNeedsPaint) {
      await Future.delayed(const Duration(milliseconds: 20));
      return _generateMarkerFromWidget(data: data);
    }

    final ui.Image myImage = await boundary.toImage();
    ByteData? byteData =
        await myImage.toByteData(format: ui.ImageByteFormat.png);

    return Marker(
        markerId: MarkerId(data['id']),
        position: position ?? const LatLng(0, 0),
        icon: BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List()));
  }
}
