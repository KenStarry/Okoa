import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/partner_use_cases.dart';

import '../../domain/model/okoa_partner.dart';

class PartnerController extends GetxController {
  final useCase = locator.get<PartnerUseCases>();
  final contactsPermissionGranted = false.obs;

  final contacts = Rxn<List<Contact>>();
  final selectedPartnersIdAgainstName = <String, dynamic>{}.obs;

  @override
  void onInit() {
    super.onInit();

    checkContactPermission();
  }

  void checkContactPermission() =>
      useCase.checkContactPermission.call(onCheckPermission: (isGranted) {
        contactsPermissionGranted.value = isGranted;
      });

  void requestContactPermission() =>
      useCase.requestContactPermission.call(onRequestPermission: (isGranted) {
        contactsPermissionGranted.value = isGranted;
      });

  void getContacts() =>
      useCase.getContactsUseCase.call(onContactsFetched: (contacts) {
        this.contacts.value = contacts;
      });

  //  select a partner
  void togglePartner({required String? uid, required String? contactName}) {
    final keys = selectedPartnersIdAgainstName.keys.toList();
    final values = selectedPartnersIdAgainstName.keys.toList();

    if (uid != null && contactName != null) {
      if (keys.contains(uid)) {
        selectedPartnersIdAgainstName.removeWhere((key, value) => key == uid);
      } else {
        selectedPartnersIdAgainstName[uid] = contactName;
      }
    }
  }

  Future<void> sendPartnerRequest(
          {required List<OkoaPartner> requestedPartners}) async =>
      await useCase.sendPartnerRequest
          .call(requestedPartners: requestedPartners);
}
