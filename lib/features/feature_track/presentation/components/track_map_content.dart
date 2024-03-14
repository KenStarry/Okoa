import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/features/feature_add_partner/presentation/controller/partner_controller.dart';
import 'package:okoa/features/feature_track/presentation/components/track_partner_card_alt.dart';

import '../../../../core/presentation/controller/core_controller.dart';

class TrackMapContent extends StatefulWidget {
  const TrackMapContent({super.key});

  @override
  State<TrackMapContent> createState() => _TrackMapContentState();
}

class _TrackMapContentState extends State<TrackMapContent> {
  late final CoreController _coreController;
  late final PartnerController _partnerController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _partnerController = Get.find<PartnerController>();

    _partnerController.getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Focus", style: Theme.of(context).textTheme.titleSmall),

              //  live location button
              GestureDetector(
                onTap: (){
                  //  open bottomsheet to choose who can see current location
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 10)
                      ]),
                  child: Center(
                    child: Icon(
                      Icons.my_location_rounded,
                      color: Theme.of(context).iconTheme.color!,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          //  partners live on the map
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Obx(
                () {
                  final user = _coreController.okoaUser.value;

                  return user == null
                      ? const Center(child: LottieLoader())
                      : user.partners.isEmpty
                          ? const Center(child: Text("No Partners found"))
                          : ListView.separated(
                              itemBuilder: (context, index) =>
                                  TrackPartnerCardAlt(
                                partnerId: [
                                  user.userId.toString(),
                                  ...user.partners
                                ][index],
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 24),
                              itemCount: [
                                user.userId.toString(),
                                ...user.partners
                              ].length,
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                            );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
