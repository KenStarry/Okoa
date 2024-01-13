import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_track/domain/use_case/track_use_case.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class TrackController extends GetxController {
  final useCase = locator.get<TrackUseCase>();

  final locationPermissionStatus =
      permission_handler.PermissionStatus.denied.obs;

  final currentLocation = Rxn<LocationData>();

  @override
  void onInit() {
    super.onInit();

    checkLocationPermissionStatus();
    requestLocationService();
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
}
