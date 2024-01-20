import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:okoa/features/feature_alerts/presentation/components/alert_carousel_card.dart';
import 'package:okoa/features/feature_alerts/presentation/utils/alerts_constants.dart';

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
          items: alertCategories
              .map((category) => AlertCarouselCard(
                    title: category,
                  ))
              .toList(),
          options: CarouselOptions(height: double.infinity)),
    );
  }
}
