import 'package:flutter_contacts/contact.dart';

abstract class PartnerRepository {
  //  Check permission
  void checkContactPermission(
      {required Function(bool isGranted) onCheckPermission});

  //  Request contact permission
  void requestContactPermission(
      {required Function(bool isGranted) onRequestPermission});

  //  Get contacts
  void getContacts(
      {required Function(List<Contact> contacts) onContactsFetched});
}
