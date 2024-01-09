import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:okoa/features/feature_home/presentation/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final List<GButton> tabs;
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    tabs = const [
      GButton(
        icon: Icons.home_rounded,
        text: "Home",
        gap: 8,
      ),
      GButton(
        icon: Icons.map_rounded,
        text: "Track",
        gap: 8,
      ),
      GButton(
        icon: Icons.add_alert_rounded,
        text: "Alerts",
        gap: 8,
      ),
      GButton(
        icon: Icons.settings_rounded,
        text: "Settings",
        gap: 8,
      ),
    ];

    pages = const [
      HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: IndexedStack(
        index: 0,
        children: pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: GNav(
            haptic: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            tabBackgroundColor: Theme.of(context).primaryColorLight,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
            activeColor: Theme.of(context).primaryColor,
            tabs: tabs,
            onTabChange: (index) {},
          ),
        ),
      ),
    );
  }
}
