import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';

class PartnerController extends GetxController {
  final contactsPermissionGranted = false.obs;

  Future<void> requestContactPermission() async =>
      contactsPermissionGranted.value =
          await FlutterContacts.requestPermission();
}
