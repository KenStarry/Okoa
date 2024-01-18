import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class PartnerController extends GetxController {
  final contactsPermissionGranted = false.obs;

  final contacts = <Contact>[].obs;

  @override
  void onInit() {
    super.onInit();

    checkContactPermission();
  }

  void checkContactPermission() async {
    final status = await permission_handler.Permission.contacts.status;

    contactsPermissionGranted.value = status.isGranted;
  }

  void requestContactPermission() async {
    final status = await permission_handler.Permission.contacts.request();

    contactsPermissionGranted.value = status.isGranted;
  }

  void getContacts() async =>
      contacts.value = await FlutterContacts.getContacts(withProperties: true);
}
