import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_track/domain/use_case/track_use_case.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

import '../../../../core/data/api/api.dart';

class TrackController extends GetxController {
  final coreController = Get.find<CoreController>();
  final useCase = locator.get<TrackUseCase>();

  final locationPermissionStatus =
      permission_handler.PermissionStatus.denied.obs;

  final currentLocation = Rxn<LocationData>();

  final polylineCoordinates = <LatLng>[].obs;

  @override
  void onInit() {
    super.onInit();

    checkLocationPermissionStatus();
    requestLocationService();

    listenToCurrentLocation(onLocationChanged: (locationData) async {
      currentLocation.value = locationData;

      //  update latitude and longitude in core controller
      await coreController.updateUserDataOnDB(data: {
        'latitude': locationData.latitude,
        'longitude': locationData.longitude,
      }, onResponse: (state) {});
    });
  }

  void checkLocationPermissionStatus() async => locationPermissionStatus.value =
      await permission_handler.Permission.location.status;

  void requestLocationPermission() async {
    final status = await permission_handler.Permission.location.request();

    locationPermissionStatus.value = status;
  }

  /// Location Service
  void requestLocationService() async => await useCase.requestLocationService();

  /// Listen to current location
  void listenToCurrentLocation(
          {required Function(LocationData locationData) onLocationChanged}) =>
      useCase.listenToCurrentLocation
          .call(onLocationChanged: onLocationChanged);

  /// Get Polyline points and coordinates
  void getPolylinePoints(
      {required LocationData sourceLocation,
      required LocationData destination}) async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult polylineResult =
        await polylinePoints.getRouteBetweenCoordinates(
            Api.googleApiKey,
            PointLatLng(sourceLocation.latitude!, sourceLocation.longitude!),
            PointLatLng(destination.latitude!, destination.longitude!));

    if (polylineResult.points.isNotEmpty) {
      for (PointLatLng point in polylineResult.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }
  }
}
