import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/add_partner_appbar.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/contacts_permission_screen.dart';

class AddPartnerPage extends StatefulWidget {
  const AddPartnerPage({super.key});

  @override
  State<AddPartnerPage> createState() => _AddPartnerPageState();
}

class _AddPartnerPageState extends State<AddPartnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          //  app bar
          AddPartnerAppbar(),

          //  content
          ContactsPermissionScreen()
        ],
      ),
    );
  }
}
