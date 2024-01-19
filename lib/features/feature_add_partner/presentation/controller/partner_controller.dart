import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/partner_use_cases.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class PartnerController extends GetxController {
  final useCase = locator.get<PartnerUseCases>();
  final contactsPermissionGranted = false.obs;

  final contacts = Rxn<List<Contact>>();
  final selectedPartners = <OkoaUser>[].obs;

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
  void togglePartner({required OkoaUser? user}) {
    if (user != null) {
      if (selectedPartners.contains(user)) {
        selectedPartners.removeWhere((myUser) => myUser.userId == user.userId);
      } else {
        selectedPartners.add(user);
      }
    }
  }
}
