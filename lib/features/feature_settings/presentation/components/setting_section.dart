import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/features/feature_settings/presentation/components/setting_card.dart';
import 'package:okoa/features/feature_settings/presentation/screens/sos_settings_page.dart';
import 'package:okoa/features/feature_settings/utils/settings_constants.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../domain/model/settings.dart';

class SettingSection extends StatelessWidget {
  final String title;
  final List<Setting> settings;

  const SettingSection(
      {super.key, required this.title, required this.settings});

  @override
  Widget build(BuildContext context) {
    return DecoratedSliver(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(24),
      ),
      sliver: SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        sliver: MultiSliver(children: [
          //  title
          SliverToBoxAdapter(
              child:
                  Text(title, style: Theme.of(context).textTheme.titleSmall)),

          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          //  list of settings
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => SettingCard(
                      setting: settings[index],
                      onTap: () {
                        //  open setting page
                        switch (settings[index].title) {
                          case 'Live Tracking':
                            break;
                          case 'SOS':
                            Get.to(() => const SosSettingsPage());
                            break;
                          case 'Logout':
                            break;
                        }
                      }),
                  childCount: settings.length))
        ]),
      ),
    );
  }
}
