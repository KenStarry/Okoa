import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/add_partner_appbar.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/contacts_permission_screen.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/contacts_screen.dart';

import 'controller/partner_controller.dart';

class AddPartnerPage extends StatefulWidget {
  const AddPartnerPage({super.key});

  @override
  State<AddPartnerPage> createState() => _AddPartnerPageState();
}

class _AddPartnerPageState extends State<AddPartnerPage> {
  late final PartnerController _partnerController;

  @override
  void initState() {
    super.initState();

    _partnerController = Get.find<PartnerController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Obx(
        () => CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            //  app bar
            const AddPartnerAppbar(),

            //  content
            _partnerController.contactsPermissionGranted.value
                ? const ContactsScreen()
                : const ContactsPermissionScreen()
          ],
        ),
      ),
    );
  }
}
