import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class PartnerController extends GetxController {
  final contactsPermissionGranted = false.obs;

  void checkContactPermission() async {
    final status = await permission_handler.Permission.contacts.status;

    contactsPermissionGranted.value = status.isGranted;
  }

  void requestContactPermission() async {
    final status = await permission_handler.Permission.contacts.request();

    contactsPermissionGranted.value = status.isGranted;
  }
}
