import 'package:flutter/material.dart';
import 'package:okoa/features/feature_alerts/presentation/components/alerts_carousel_section.dart';

class AlertsPage extends StatefulWidget {
  const AlertsPage({super.key});

  @override
  State<AlertsPage> createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  alerts app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.add_alert_rounded,
                      size: 32, color: Theme.of(context).primaryColor),
                  const SizedBox(width: 8),
                  Text("Alerts", style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),

            const SizedBox(height: 24),
            //  alerts content
            const Expanded(
                child: AlertsCarouselSection())
            //  navigation toolbar
          ],
        ),
      )),
    );
  }
}
