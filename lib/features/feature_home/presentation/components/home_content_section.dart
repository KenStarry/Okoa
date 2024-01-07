import 'package:flutter/material.dart';

class HomeContentSection extends StatefulWidget {
  const HomeContentSection({super.key});

  @override
  State<HomeContentSection> createState() => _HomeContentSectionState();
}

class _HomeContentSectionState extends State<HomeContentSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topRight: Radius.circular(100)),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
