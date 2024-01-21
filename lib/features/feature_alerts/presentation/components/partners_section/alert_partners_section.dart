import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:okoa/core/domain/model/sos_state.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_alerts/presentation/components/partners_section/alert_partner_request_card.dart';

class AlertPartnersSection extends StatefulWidget {
  const AlertPartnersSection({super.key});

  @override
  State<AlertPartnersSection> createState() => _AlertPartnersSectionState();
}

class _AlertPartnersSectionState extends State<AlertPartnersSection> {
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  title
        Text("Pending Requests", style: Theme.of(context).textTheme.titleSmall),

        const SizedBox(height: 24),

        //  requests content
        Expanded(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Theme.of(context).primaryColorLight,
          child: Obx(
            () => _coreController.okoaUser.value == null ||
                    _coreController.okoaUser.value!.receivedRequests.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/partner_request_${_coreController.sosState.value == SosState.safe ? 'blue' : _coreController.sosState.value == SosState.warning ? 'orange' : 'red'}.svg',
                        width: 200,
                        height: 200,
                      ),
                      const SizedBox(height: 24),
                      Text("No requests yet.",
                          style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  )
                : ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => AlertPartnerRequestCard(
                          partner: _coreController
                              .okoaUser.value!.receivedRequests[index],
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 24),
                    itemCount: _coreController
                        .okoaUser.value!.receivedRequests.length),
          ),
        ))
      ],
    );
  }
}
