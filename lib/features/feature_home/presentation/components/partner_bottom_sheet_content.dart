import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
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

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          //  user avatar
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
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  spreadRadius: 5)
                            ]),
                        child: Center(
                          child: Icon(
                              _coreController.sosState.value == SosState.safe
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
              ))
        ],
      ),
    );
  }
}
