import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:okoa/features/feature_home/presentation/components/home_partner_card.dart';
import 'package:okoa/features/feature_home/presentation/components/partners_icon.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../core/presentation/components/lottie_loader.dart';
import '../../../../core/presentation/controller/core_controller.dart';
import '../../../feature_add_partner/presentation/controller/partner_controller.dart';

class HomeContentSection extends StatefulWidget {
  const HomeContentSection({super.key});

  @override
  State<HomeContentSection> createState() => _HomeContentSectionState();
}

class _HomeContentSectionState extends State<HomeContentSection> {
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
    return DecoratedSliver(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(50)),
        color: Theme.of(context).primaryColorLight,
      ),
      sliver: SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: MultiSliver(children: [
          SliverToBoxAdapter(
            child: Text(
              "Partners",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Obx(
            () {
              final user = _coreController.okoaUser.value;

              return user == null
                  ? const SliverToBoxAdapter(
                      child: Center(child: LottieLoader()))
                  : user.partners.isEmpty
                      ? const SliverToBoxAdapter(
                          child: Center(child: Text("No Partners found")))
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (context, index) => HomePartnerCard(
                                  partnerId: _coreController
                                      .okoaUser.value!.partners[index]),
                              childCount: _coreController
                                  .okoaUser.value!.partners.length));
            },
          ),
        ]),
      ),
    );
  }
}
