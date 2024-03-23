import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      //  title
      SliverToBoxAdapter(
          child: Text('General', style: Theme.of(context).textTheme.titleSmall))
    ]);
  }
}
