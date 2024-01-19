import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/contact_card.dart';
import 'package:sliver_tools/sliver_tools.dart';

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
    return SliverFillRemaining(
      child: Column(
        children: [
          //  contacts header
          //  contacts list
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
              child: Obx(
                () => ListView.separated(
                  itemBuilder: (context, index) => ContactCard(
                      contact: _partnerController.contacts.value![index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemCount: _partnerController.contacts.value!.length,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
