import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final List<Widget> tabs;

  @override
  void initState() {
    super.initState();

    tabs = const [
      GButton(icon: Icons.home_rounded, text: "Home"),
      GButton(icon: Icons.map_rounded, text: "Track"),
      GButton(icon: Icons.add_alert_rounded, text: "Notifications"),
      GButton(icon: Icons.settings_rounded, text: "Settings"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: GNav(tabs: []),
    );
  }
}
