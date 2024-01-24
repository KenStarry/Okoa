import 'package:flutter/material.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

class HomePartnerBottomSheet extends StatefulWidget {

  final OkoaUser partner;

  const HomePartnerBottomSheet({super.key, required this.partner});

  @override
  State<HomePartnerBottomSheet> createState() => _HomePartnerBottomSheetState();
}

class _HomePartnerBottomSheetState extends State<HomePartnerBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Text("Hello"),
    );
  }
}
