import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/presentation/components/setting_card.dart';
import 'package:okoa/features/feature_settings/utils/settings_constants.dart';
import 'package:sliver_tools/sliver_tools.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
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
              child: Text('General',
                  style: Theme.of(context).textTheme.titleSmall)),

          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          //  list of settings
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => SettingCard(
                      setting: SettingsConstants.generalSettings[index],
                      onTap: () {
                        //  open setting page
                      }),
                  childCount: SettingsConstants.generalSettings.length))
        ]),
      ),
    );
  }
}
