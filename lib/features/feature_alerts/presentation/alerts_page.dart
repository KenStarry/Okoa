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
      backgroundColor: Theme
          .of(context)
          .scaffoldBackgroundColor,
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Theme
                .of(context)
                .scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  alerts app bar
                Text("Alerts", style: Theme.of(context).textTheme.titleLarge)
                //  alerts content
                //  navigation toolbar
              ],
            ),
          )),
    );
  }
}
