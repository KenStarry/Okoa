import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackController extends GetxController {
  final locationPermissionStatus = PermissionStatus.denied.obs;

  @override
  void onInit() {
    super.onInit();

    checkLocationPermissionStatus();
  }

  void checkLocationPermissionStatus() async =>
      locationPermissionStatus.value = await Permission.location.status;

  void requestLocationPermission() {
    Permission.location
        .onGrantedCallback(
            () => locationPermissionStatus.value = PermissionStatus.granted)
        .onDeniedCallback(
            () => locationPermissionStatus.value = PermissionStatus.denied)
        .onPermanentlyDeniedCallback(() => locationPermissionStatus.value =
            PermissionStatus.permanentlyDenied);
  }
}
