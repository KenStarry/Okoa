import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SosSettingsPage extends StatefulWidget {
  const SosSettingsPage({super.key});

  @override
  State<SosSettingsPage> createState() => _SosSettingsPageState();
}

class _SosSettingsPageState extends State<SosSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('SOS', style: Theme.of(context).textTheme.titleSmall),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_rounded,
                color: Theme.of(context).iconTheme.color!)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: CustomScrollView(
          slivers: [
            //  message templates

            //  sim card choices

            //  countdown timer for sos to take place
          ],
        ),
      ),
    );
  }
}
