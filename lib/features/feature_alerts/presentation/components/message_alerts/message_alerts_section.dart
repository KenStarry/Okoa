import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/domain/model/sos_state.dart';
import '../../../../../core/presentation/controller/core_controller.dart';

class MessageAlertsSection extends StatefulWidget {
  const MessageAlertsSection({super.key});

  @override
  State<MessageAlertsSection> createState() => _MessageAlertsSectionState();
}

class _MessageAlertsSectionState extends State<MessageAlertsSection> {
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/warning_${_coreController.sosState.value == SosState.safe ? 'blue' : _coreController.sosState.value == SosState.warning ? 'orange' : 'red'}.svg',
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 24),
          Text("No critical alerts yet.",
              style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
