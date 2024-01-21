import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_add_partner/domain/model/okoa_partner.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

class AlertPartnerRequestCard extends StatefulWidget {
  final OkoaPartner partner;

  const AlertPartnerRequestCard({super.key, required this.partner});

  @override
  State<AlertPartnerRequestCard> createState() =>
      _AlertPartnerRequestCardState();
}

class _AlertPartnerRequestCardState extends State<AlertPartnerRequestCard> {
  late final CoreController _coreController;
  OkoaUser? currentUser;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();

    _coreController.getUserDataFromDatabase(
        uid: widget.partner.senderId,
        onGetUserData: (data) {
          currentUser = data;
        });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: double.infinity,
      height: 90,
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(avatarUrl: currentUser?.avatarUrl, size: const Size(60, 60)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              currentUser?.userName ?? "No username",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                  fontWeight: Theme.of(context).textTheme.titleMedium!.fontWeight,
                  color: Theme.of(context).textTheme.bodyLarge!.color),
            ),
          ),

          //  accept or decline requests button
          Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
