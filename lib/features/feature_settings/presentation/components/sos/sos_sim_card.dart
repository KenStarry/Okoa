import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:okoa/features/feature_settings/domain/model/sos_message.dart';
import 'package:okoa/features/feature_settings/utils/settings_constants.dart';

class SosSimCard extends StatelessWidget {
  final SimCard simCard;
  final bool isActive;
  final VoidCallback onTap;

  const SosSimCard(
      {super.key,
      required this.simCard,
      this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 300,
          height: 180,
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
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: UnconstrainedBox(
                    child: Transform.rotate(
                      angle: 180,
                      child: SvgPicture.asset('assets/images/sim_card.svg',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).primaryColor, BlendMode.srcIn)),
                    ),
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
                      simCard.displayName ?? '',
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
