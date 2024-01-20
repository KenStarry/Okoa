import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AlertsCarouselSection extends StatefulWidget {
  const AlertsCarouselSection({super.key});

  @override
  State<AlertsCarouselSection> createState() => _AlertsCarouselSectionState();
}

class _AlertsCarouselSectionState extends State<AlertsCarouselSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).primaryColorLight,
      child: CarouselSlider(
          items: items, options: CarouselOptions(height: double.infinity)),
    );
  }
}
