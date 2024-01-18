import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactsPermissionScreen extends StatelessWidget {
  const ContactsPermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/images/contacts.svg",
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
