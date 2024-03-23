import 'package:flutter/material.dart';
import 'package:okoa/features/feature_settings/domain/model/settings.dart';
import 'package:okoa/features/feature_settings/presentation/components/sos/sos_message_card.dart';
import 'package:okoa/features/feature_settings/utils/settings_constants.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MessageTemplatesSection extends StatefulWidget {
  const MessageTemplatesSection({super.key});

  @override
  State<MessageTemplatesSection> createState() =>
      _MessageTemplatesSectionState();
}

class _MessageTemplatesSectionState extends State<MessageTemplatesSection> {
  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      //  title
      SliverToBoxAdapter(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Message Templates',
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 16),
          Text('Pick a default message to be sent in the event of an SOS.',
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      )),

      const SliverToBoxAdapter(child: SizedBox(height: 16)),

      //  list of default messages
      SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          height: 250,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: ListView.separated(
            itemBuilder: (context, index) => SosMessageCard(
                sosMessage: SettingsConstants.sosMessages[index],
                isActive: false,
                onTap: () {}),
            separatorBuilder: (context, index) => SizedBox(width: 16),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: SettingsConstants.sosMessages.length,
          ),
        ),
      )

      //  templates row
    ]);
  }
}
