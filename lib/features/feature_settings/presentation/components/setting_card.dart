import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/domain/model/settings.dart';

class SettingCard extends StatelessWidget {
  final Setting setting;
  final VoidCallback onTap;

  const SettingCard({super.key, required this.setting, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(setting.icon, color: Theme.of(context).iconTheme.color!),
          const SizedBox(width: 8),
          Expanded(
              child: Text(setting.title,
                  style: Theme.of(context).textTheme.bodyLarge))
        ],
      ),
    );
  }
}