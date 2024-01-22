import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/features/feature_add_partner/presentation/controller/partner_controller.dart';
import 'package:okoa/features/feature_track/presentation/components/track_partner_card.dart';
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

              //  live location sharing on
              Row(
                children: [
                  const Icon(Icons.my_location_rounded,
                      color: Colors.greenAccent),
                  const SizedBox(width: 8),
                  Text("Live location on",
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight:
                              Theme.of(context).textTheme.bodySmall!.fontWeight,
                          color: Colors.greenAccent))
                ],
              )
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
                () => _coreController.okoaUser.value == null
                    ? const Center(child: LottieLoader())
                    : _coreController.okoaUser.value!.partners.isEmpty
                        ? const Center(child: Text("No Partners found"))
                        : ListView.separated(
                            itemBuilder: (context, index) =>
                                TrackPartnerCardAlt(
                              partnerId: [
                                _coreController.okoaUser.value!.userId
                                    .toString(),
                                ..._coreController.okoaUser.value!.partners
                              ][index],
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 24),
                            itemCount: [
                              _coreController.okoaUser.value!.userId.toString(),
                              ..._coreController.okoaUser.value!.partners
                            ].length,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                          ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
