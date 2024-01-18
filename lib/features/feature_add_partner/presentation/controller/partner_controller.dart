import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class PartnerController extends GetxController {
  final contactsPermissionGranted = false.obs;

  Future<void> requestContactPermission() async {
    final status = await permission_handler.Permission.contacts.request();

    contactsPermissionGranted.value = status.isGranted;
  }
}
