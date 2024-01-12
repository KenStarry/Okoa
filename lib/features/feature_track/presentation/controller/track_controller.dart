import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackController extends GetxController {
  final locationPermissionStatus = PermissionStatus.denied.obs;

  @override
  void onInit() {
    super.onInit();

    checkLocationPermissionStatus();

    print("LOCATION PERMISSION STATUS : ${locationPermissionStatus.value}");
  }

  void checkLocationPermissionStatus() async =>
      locationPermissionStatus.value = await Permission.location.status;

  void requestLocationPermission() async {
    final status = await Permission.location.request();

    locationPermissionStatus.value = status;
  }
}
