import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            () => ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => AlertPartnerRequestCard(
                      partner: _coreController
                          .okoaUser.value!.receivedRequests[index],
                    ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 24),
                itemCount:
                    _coreController.okoaUser.value!.receivedRequests.length),
          ),
        ))
      ],
    );
  }
}
