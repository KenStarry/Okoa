import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:okoa/features/feature_add_partner/presentation/controller/partner_controller.dart';

class ContactsPermissionScreen extends StatefulWidget {
  const ContactsPermissionScreen({super.key});

  @override
  State<ContactsPermissionScreen> createState() => _ContactsPermissionScreenState();
}

class _ContactsPermissionScreenState extends State<ContactsPermissionScreen> {

  late final PartnerController _partnerController;

  @override
  void initState() {
    super.initState();

    _partnerController = Get.find<PartnerController>();
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Contacts Permission",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            "Grant permission to access your contacts.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 48),
          SvgPicture.asset(
            "assets/images/contacts.svg",
            width: 250,
            height: 250,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 48),
          FilledButton(onPressed: () {
            _partnerController.requestContactPermission();
          }, child: Text("Grant Permission"))
        ],
      ),
    );
  }
}
