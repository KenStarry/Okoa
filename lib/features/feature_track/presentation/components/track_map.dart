import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:okoa/core/data/api/api.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
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
  late final CoreController _coreController;
  late final Completer<GoogleMapController> _googleMapController;

  final LatLng destination =
      const LatLng(0.28312695556758094, 34.75168063532842);

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    _trackController = Get.find<TrackController>();
    _coreController = Get.find<CoreController>();
    _googleMapController = Completer<GoogleMapController>();

    _loadMapStyles();

    ever(_coreController.okoaUser, (user) {
      if (user != null) {
        _coreController.getPartnerDetails(partnerIds: [...user.partners]);
      }
    });

    ever(_coreController.partnerDetails, (okoaPartners) {
      final markersData = okoaPartners.entries
          .map((partner) => <String, dynamic>{
                'id': partner.value.userId,
                'latitude': partner.value.latitude,
                'longitude': partner.value.longitude,
                'widget': CustomUserMarker(avatarUrl: partner.value.avatarUrl),
              })
          .toList();

      _trackController.setMarkerData(markersData: markersData);

      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await _buildMarkers(markersData: markersData);
        _trackController.getPolylinePoints(
            sourceLocation: LatLng(
                _trackController.currentLocation.value?.latitude! ?? 0.0,
                _trackController.currentLocation.value?.longitude! ?? 0.0),
            destination: destination);
      });
    });

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

  Future _loadMapStyles() async {
    final darkMapStyle = await rootBundle
        .loadString('assets/json/map_styles/dark_mode_style.json');

    final GoogleMapController myController = await _googleMapController.future;

    myController.setMapStyle(darkMapStyle);
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
                      flex: 3, child: Center(child: LottieLoader()))
                  : Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: _trackController.markerIcons.isEmpty
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
                                    markers: _trackController.markersData
                                        .map((data) => Marker(
                                            markerId: MarkerId(data['id']),
                                            icon: _trackController
                                                .markerIcons[data['id']]!,
                                            position: LatLng(data['latitude'],
                                                data['longitude'])))
                                        .toSet()),
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

  Future<BitmapDescriptor> getBitmapDescriptor(
          {required Widget customMarker}) async =>
      await customMarker.toBitmapDescriptor(
          waitToRender: const Duration(seconds: 10));

  Future<void> _buildMarkers(
      {required List<Map<String, dynamic>> markersData}) async {
    await Future.wait(markersData.map((data) async {
      BitmapDescriptor marker =
          await getBitmapDescriptor(customMarker: data['widget']);
      _trackController.markerIcons[data['id']] = marker;
    }));
  }
}
