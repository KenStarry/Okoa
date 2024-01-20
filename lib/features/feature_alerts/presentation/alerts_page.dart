import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  alerts app bar
            Row(
              children: [
                Icon(Icons.add_alert_rounded,
                    size: 32, color: Theme.of(context).primaryColor),
                const SizedBox(width: 8),
                Text("Alerts", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),

            const SizedBox(height: 24),
            //  alerts content
            Expanded(child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).primaryColorLight
              ),
            ))
            //  navigation toolbar
          ],
        ),
      )),
    );
  }
}
