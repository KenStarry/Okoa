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
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topRight: Radius.circular(50)),
          color: Theme.of(context).primaryColorLight,
        ),
        child: Wrap(
          children: [
            Text("Partners", style: Theme.of(context).textTheme.titleMedium,),

            Container(
              width: double.infinity,
              height: 800,
              color: Theme.of(context).primaryColorLight,
            )
          ],
        ),
      ),
    );
  }
}
