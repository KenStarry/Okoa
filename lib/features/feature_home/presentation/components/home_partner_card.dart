import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/presentation/controller/core_controller.dart';
import '../../../feature_add_partner/presentation/controller/partner_controller.dart';
import '../../../feature_auth/domain/model/okoa_user.dart';

class HomePartnerCard extends StatefulWidget {
  final String partnerId;

  const HomePartnerCard({super.key, required this.partnerId});

  @override
  State<HomePartnerCard> createState() => _HomePartnerCardState();
}

class _HomePartnerCardState extends State<HomePartnerCard> {
  late final CoreController _coreController;
  late final PartnerController _partnerController;
  OkoaUser? currentUser;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _partnerController = Get.find<PartnerController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _coreController.listenToUserDataonDB(
          uid: widget.partnerId,
          onGetUserData: (data) {
            currentUser = data;

            setState(() {});
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.only(bottom: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
