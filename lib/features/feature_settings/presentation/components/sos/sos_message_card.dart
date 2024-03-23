import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/domain/model/sos_message.dart';
import 'package:okoa/features/feature_settings/utils/settings_constants.dart';

class SosMessageCard extends StatelessWidget {
  final SosMessage sosMessage;
  final bool isActive;
  final VoidCallback onTap;

  const SosMessageCard(
      {super.key,
      required this.sosMessage,
      this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: onTap,
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
                  child: Text(
                    sosMessage.message,
                    style: Theme.of(context).textTheme.bodyMedium
                  ),
                ),
              )),

              //  radio button section
              Row(
                children: [
                  Radio(
                      value: isActive,
                      groupValue: false,
                      onChanged: (value) {}),
                  const SizedBox(width: 12),
                  Text(
                      'Message ${SettingsConstants.sosMessages.indexOf(sosMessage) + 1}',
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
