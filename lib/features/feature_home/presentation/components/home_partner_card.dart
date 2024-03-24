import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/avatar.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/core/presentation/components/open_bottom_sheet.dart';
import 'package:okoa/features/feature_home/presentation/components/home_partner_card_action_btn.dart';
import 'package:okoa/features/feature_home/presentation/components/partner_bottom_sheet.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/domain/model/sos_state.dart';
import '../../../../core/presentation/controller/core_controller.dart';
import '../../../../theme/colors.dart';
import '../../../feature_add_partner/presentation/controller/partner_controller.dart';
import '../../../feature_auth/domain/model/okoa_user.dart';
import 'package:background_sms/background_sms.dart';

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
      child: InkWell(
        onTap: currentUser != null
            ? () {
                openBottomSheet(
                    content: HomePartnerBottomSheet(partner: currentUser!),
                    onComplete: () {});
              }
            : null,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.only(bottom: 24),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(32)),
          child: currentUser == null
              ? const Center(child: LottieLoader())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  top section
                    Row(
                      children: [
                        Hero(
                          tag: 'partner_avatar',
                          child: Avatar(
                              avatarUrl: currentUser!.avatarUrl,
                              size: const Size(70, 70)),
                        ),

                        const SizedBox(width: 8),

                        //  name + phone number
                        Obx(
                          () {
                            final contact =
                                _partnerController.contacts.value != null
                                    ? _partnerController.getUserContactDetails(
                                        phoneNumber: currentUser?.phone ?? '')
                                    : null;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Hero(
                                  tag: 'partner_name',
                                  child: Text(
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
                                      )),
                                ),

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
                                      : currentUser!.phone,
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            );
                          },
                        )
                      ],
                    ),

                    //  current location
                    Row(
                      children: [
                        //  current user location
                        Row(
                          children: [
                            Icon(Icons.location_on_rounded,
                                color: Theme.of(context).iconTheme.color!,
                                size: 20),
                            const SizedBox(width: 8),
                            Text(
                              "Nairobi, Kenya",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),

                        const SizedBox(width: 16),

                        //  distance away from current user
                        Row(
                          children: [
                            Icon(Icons.my_location_rounded,
                                color: Theme.of(context).iconTheme.color!,
                                size: 20),
                            const SizedBox(width: 8),
                            Text(
                              "33km",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                      ],
                    ),

                    //  controls
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //  phone call and message section
                        Row(
                          children: [
                            //  call
                            HomePartnerCardActionBtn(
                              icon: Icons.call_rounded,
                              size: const Size(50, 50),
                              onTap: () async {
                                await _coreController.makePhoneCall(phoneNumber: '+254700692069');
                              },
                            ),
                            const SizedBox(width: 8),
                            //  message
                            HomePartnerCardActionBtn(
                              icon: Icons.sms_rounded,
                              size: const Size(50, 50),
                              onTap: () async {

                              },
                            ),
                            //  sos
                          ],
                        ),

                        //  sos status button
                        AvatarGlow(
                          glowShape: BoxShape.circle,
                          glowCount: 2,
                          glowRadiusFactor: 0.3,
                          glowColor: currentUser?.sos.sosState ==
                                  SosState.safe.toString()
                              ? accent
                              : currentUser?.sos.sosState ==
                                      SosState.warning.toString()
                                  ? sosOrange
                                  : sosRed,
                          child: GestureDetector(
                            onTap: () {
                              //  open SOS bottomsheet
                            },
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentUser?.sos.sosState ==
                                            SosState.safe.toString()
                                        ? accent
                                        : currentUser?.sos.sosState ==
                                                SosState.warning.toString()
                                            ? sosOrange
                                            : sosRed,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 10,
                                          spreadRadius: 5)
                                    ]),
                                child: Stack(
                                  children: [
                                    //  logo to represent current status
                                    Center(
                                      child: Icon(
                                          currentUser?.sos.sosState ==
                                                  SosState.safe.toString()
                                              ? Icons.gpp_good_rounded
                                              : currentUser?.sos.sosState ==
                                                      SosState.warning
                                                          .toString()
                                                  ? Icons.gpp_maybe_rounded
                                                  : Icons.gpp_bad_rounded,
                                          size: 32,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
