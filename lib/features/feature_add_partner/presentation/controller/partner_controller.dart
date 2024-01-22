import 'dart:ffi';

import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/partner_use_cases.dart';

import '../../../../core/domain/model/response_state.dart';
import '../../domain/model/okoa_partner.dart';

class PartnerController extends GetxController {
  final useCase = locator.get<PartnerUseCases>();
  final contactsPermissionGranted = false.obs;

  final contacts = Rxn<List<Contact>>();
  final selectedPartners = <OkoaPartner>[].obs;

  @override
  void onInit() {
    super.onInit();

    checkContactPermission();
    getContacts();
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

  Contact? getUserContactDetails({required String phoneNumber}) {
    if (contacts.value != null) {
      final contact = contacts.value!.firstWhereOrNull((contact) => contact
          .phones
          .map((phone) => phone.normalizedNumber)
          .toList()
          .contains(phoneNumber.replaceAll(' ', '')));

      return contact;
    }

    return null;
  }

  //  select a partner
  void togglePartner({required OkoaPartner okoaPartner}) {
    if (selectedPartners.contains(okoaPartner)) {
      selectedPartners.removeWhere((partner) => partner == okoaPartner);
    } else {
      selectedPartners.add(okoaPartner);
    }
  }

  Future<void> sendPartnerRequest(
          {required List<OkoaPartner> requestedPartners}) async =>
      await useCase.sendPartnerRequest
          .call(requestedPartners: requestedPartners);

  Future<void> updatePartnersOnDB(
          {required String senderId,
          required String receiverId,
          required Function(ResponseState response) onResponse}) async =>
      await useCase.updatePartnersOnDB.call(
          senderId: senderId, receiverId: receiverId, onResponse: onResponse);
}
