import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
import 'package:okoa/features/feature_add_partner/presentation/controller/partner_controller.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:okoa/theme/colors.dart';

import '../../../../core/domain/model/sos_state.dart';
import '../../../../core/presentation/controller/core_controller.dart';

class PartnerBottomSheetContent extends StatefulWidget {
  final OkoaUser partner;

  const PartnerBottomSheetContent({super.key, required this.partner});

  @override
  State<PartnerBottomSheetContent> createState() =>
      _PartnerBottomSheetContentState();
}

class _PartnerBottomSheetContentState extends State<PartnerBottomSheetContent> {
  late final CoreController _coreController;
  late final PartnerController _partnerController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _partnerController = Get.find<PartnerController>();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          //  user avatar
          Column(
            children: [
              Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _coreController.sosState.value == SosState.safe
                        ? Theme.of(context).primaryColor
                        : _coreController.sosState.value == SosState.warning
                            ? sosOrange
                            : sosRed,
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Avatar(
                            avatarUrl: widget.partner.avatarUrl,
                            size: const Size(140, 140)),
                      ),

                      //  is user safe
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColor,
                                border: Border.all(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    width: 5,
                                    strokeAlign: BorderSide.strokeAlignOutside),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 10,
                                      spreadRadius: 5)
                                ]),
                            child: Center(
                              child: Icon(
                                  _coreController.sosState.value ==
                                          SosState.safe
                                      ? Icons.gpp_good_rounded
                                      : _coreController.sosState.value ==
                                              SosState.warning
                                          ? Icons.gpp_maybe_rounded
                                          : Icons.gpp_bad_rounded,
                                  size: 32,
                                  color: Colors.black),
                            )),
                      )
                    ],
                  )),

              //  user name
              Obx(
                () {
                  final contact = _partnerController.contacts.value != null
                      ? _partnerController.getUserContactDetails(
                          phoneNumber: widget.partner.phone ?? '')
                      : null;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          widget.partner.userName ==
                                  _coreController.okoaUser.value!.userName
                              ? "${widget.partner.userName} (Me)"
                              : contact != null
                                  ? contact.displayName
                                  : widget.partner.userName,
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .fontWeight,
                            color:
                                Theme.of(context).textTheme.titleSmall!.color,
                          )),

                      const SizedBox(height: 8),

                      //  phone
                      Text(
                        contact != null &&
                                contact.phones
                                    .map((phone) => phone.number)
                                    .toList()[0]
                                    .isNotEmpty
                            ? contact.phones
                                .map((phone) => phone.number)
                                .toList()[0]
                            : widget.partner.phone,
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
