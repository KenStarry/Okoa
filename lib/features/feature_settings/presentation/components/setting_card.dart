import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/domain/model/settings.dart';

class SettingCard extends StatelessWidget {
  final Setting setting;
  final VoidCallback onTap;

  const SettingCard({super.key, required this.setting, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Icon(setting.icon, color: Theme.of(context).iconTheme.color!),
            const SizedBox(width: 16),
            Expanded(
                child: Text(setting.title,
                    style: Theme.of(context).textTheme.bodyLarge))
          ],
        ),
      ),
    );
  }
}
