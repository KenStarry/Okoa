import 'package:flutter_contacts/contact.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';

class PartnerRepositoryImpl extends PartnerRepository {

  ///  Check contacts permission
  @override
  void checkContactPermission({required bool isGranted}) {
    // TODO: implement checkContactPermission
  }

  ///  Get Contacts
  @override
  void getContacts({required Function(List<Contact> contacts) onContactsFetched}) {
    // TODO: implement getContacts
  }

  ///  Request contacts permission
  @override
  void requestContactPermission({required bool isGranted}) {
    // TODO: implement requestContactPermission
  }

}