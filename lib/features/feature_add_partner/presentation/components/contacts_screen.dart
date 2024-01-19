import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/partner_controller.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  late final PartnerController _partnerController;

  @override
  void initState() {
    super.initState();

    _partnerController = Get.find<PartnerController>();

    _partnerController.getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {

        print("CONTACTS : ${_partnerController.contacts.value}");

        return SliverToBoxAdapter(
          child: Text("Hello"),
        );
      },
    );
  }
}
