import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
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
    return MultiSliver(children: [
      //  contacts list
      Obx(
        () => _partnerController.contacts.value == null
            ? const SliverFillRemaining(
                child: Center(child: LottieLoader()),
              )
            : _partnerController.contacts.value!.isNotEmpty
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (context, index) => Container(
                                  color: Colors.red,
                                  width: 100,
                                  height: 50,
                                ),
                            childCount:
                                _partnerController.contacts.value!.length)),
                  )
                : const SliverFillRemaining(
                    child: Center(child: Text("No contacts found"))),
      )
    ]);
  }
}
