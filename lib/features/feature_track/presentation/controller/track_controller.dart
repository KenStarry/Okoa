import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_track/domain/use_case/track_use_case.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackController extends GetxController {
  final useCase = locator.get<TrackUseCase>();
  final locationPermissionStatus = PermissionStatus.denied.obs;

  @override
  void onInit() {
    super.onInit();

    checkLocationPermissionStatus();
  }

  void checkLocationPermissionStatus() async =>
      locationPermissionStatus.value = await Permission.location.status;

  void requestLocationPermission() async {
    final status = await Permission.location.request();

    locationPermissionStatus.value = status;
  }

  /// Location Service
  Future<void> requestLocationService() async =>
      await useCase.requestLocationService();
}
