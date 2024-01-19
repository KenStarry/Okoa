import 'package:flutter_contacts/contact.dart';

abstract class PartnerRepository {
  //  Check permission
  void checkContactPermission({required bool isGranted});

  //  Request contact permission
  void requestContactPermission({required bool isGranted});

  //  Get contacts
  void getContacts(
      {required Function(List<Contact> contacts) onContactsFetched});
}
