import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:okoa/core/domain/model/sos_state.dart';
import 'package:okoa/features/feature_home/presentation/components/home_appbar.dart';
import 'package:okoa/features/feature_home/presentation/components/sos_quick_actions.dart';
import 'package:okoa/features/feature_home/presentation/utils/home_constants.dart';
import 'package:okoa/theme/colors.dart';

import '../../../../core/presentation/controller/core_controller.dart';

class SOSStatusSection extends StatefulWidget {
  const SOSStatusSection({super.key});

  @override
  State<SOSStatusSection> createState() => _SOSStatusSectionState();
}

class _SOSStatusSectionState extends State<SOSStatusSection> {
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 460,
        padding: const EdgeInsets.only(top: 50, bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            color: Theme.of(context).scaffoldBackgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  home appbar
            const HomeAppBar(),

            //  shield
            AvatarGlow(
              glowShape: BoxShape.circle,
              glowCount: 2,
              glowRadiusFactor: 0.3,
              glowColor: Theme.of(context).primaryColor,
              child: GestureDetector(
                onTap: () {
                  //  open SOS bottomsheet
                  Get.bottomSheet(Text("Hello"));
                },
                onLongPress: (){
                  //  change SOS Status to sos
                  print("HELLO");
                },
                child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
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
                              _coreController.sosState.value == SosState.safe
                                  ? Icons.gpp_good_rounded
                                  : _coreController.sosState.value ==
                                          SosState.warning
                                      ? Icons.gpp_maybe_rounded
                                      : Icons.gpp_bad_rounded,
                              size: 120,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ),

            //  quick actions
            Container(
              width: double.infinity,
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.transparent,
              child: Wrap(
                runSpacing: 24,
                spacing: 24,
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: sosCategories
                    .map((category) => SosQuickActions(
                          title: category.title,
                          iconData: category.iconData,
                          onTap: () {},
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
