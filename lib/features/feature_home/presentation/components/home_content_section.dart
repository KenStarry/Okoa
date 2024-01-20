import 'package:flutter/material.dart';
import 'package:okoa/features/feature_home/presentation/components/partners_icon.dart';

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
          runSpacing: 24,
          children: [
            Text(
              "Partners",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Container(
              width: double.infinity,
              height: 300,
              color: Theme.of(context).primaryColorLight,
              child: Column(
                children: [
                  UnconstrainedBox(
                    child: CustomPaint(
                      size: Size(250, (250 * 0.7235251364447527).toDouble()),
                      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: PartnersIcon(),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Text("No Partners yet")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
