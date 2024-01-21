import 'package:flutter/material.dart';

class AlertCarouselCard extends StatefulWidget {
  final String title;
  final Widget content;

  const AlertCarouselCard(
      {super.key, required this.title, required this.content});

  @override
  State<AlertCarouselCard> createState() => _AlertCarouselCardState();
}

class _AlertCarouselCardState extends State<AlertCarouselCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  title
          Text(widget.title, style: Theme.of(context).textTheme.titleMedium),

          const SizedBox(height: 24),

          //  content
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).primaryColorLight,
              ),
              child: widget.content,
            ),
          )
        ],
      ),
    );
  }
}
