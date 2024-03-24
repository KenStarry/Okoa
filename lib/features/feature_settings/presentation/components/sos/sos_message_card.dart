import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/features/feature_settings/domain/model/sos_message.dart';
import 'package:okoa/features/feature_settings/utils/settings_constants.dart';

import '../../controller/settings_controller.dart';

class SosMessageCard extends StatefulWidget {
  final SosMessage sosMessage;
  final bool isActive;
  final VoidCallback onTap;

  const SosMessageCard(
      {super.key,
      required this.sosMessage,
      this.isActive = false,
      required this.onTap});

  @override
  State<SosMessageCard> createState() => _SosMessageCardState();
}

class _SosMessageCardState extends State<SosMessageCard> {
  late final SettingsController _settingsController;

  @override
  void initState() {
    super.initState();

    _settingsController = Get.find<SettingsController>();
  }

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: 300,
          height: 250,
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: Column(
            children: [
              //  message section
              Expanded(
                  child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Theme.of(context).primaryColorLight),
                child: SingleChildScrollView(
                  child: Text(widget.sosMessage.message,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              )),

              //  radio button section
              Row(
                children: [
                  Obx(
                    () => Radio(
                        value: widget.sosMessage.messageEnum,
                        groupValue: _settingsController.defaultMessage.value,
                        onChanged: (value) async => widget.onTap()),
                  ),
                  const SizedBox(width: 12),
                  Text(
                      'Message ${SettingsConstants.sosMessages.indexOf(widget.sosMessage) + 1}',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
