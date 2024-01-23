import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';

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
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 15)
            ]),
        child: currentUser == null
            ? const Center(child: LottieLoader())
            : Column(
                children: [
                  //  top section
                  Row(
                    children: [
                      Avatar(
                          avatarUrl: currentUser!.avatarUrl,
                          size: const Size(80, 80)),

                      const SizedBox(width: 8),

                      //  name + phone number
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () {
                              final contact = _partnerController
                                          .contacts.value !=
                                      null
                                  ? _partnerController.getUserContactDetails(
                                      phoneNumber: currentUser?.phone ?? '')
                                  : null;

                              return Text(
                                  currentUser?.userName == null
                                      ? "No name"
                                      : currentUser?.userName ==
                                              _coreController
                                                  .okoaUser.value!.userName
                                          ? "${currentUser?.userName} (Me)"
                                          : contact != null
                                              ? contact.displayName
                                              : currentUser!.userName,
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontSize,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .fontWeight,
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .color,
                                  ));
                            },
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
