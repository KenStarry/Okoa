import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackController extends GetxController {
  final locationPermissionStatus = PermissionStatus.denied.obs;

  void checkLocationPermissionStatus() async =>
      locationPermissionStatus.value = await Permission.location.status;
}
