import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/features/feature_alerts/presentation/components/alert_carousel_card.dart';
import 'package:okoa/features/feature_alerts/presentation/controller/alerts_controller.dart';
import 'package:okoa/features/feature_alerts/presentation/utils/alerts_constants.dart';

class AlertsCarouselSection extends StatefulWidget {
  const AlertsCarouselSection({super.key});

  @override
  State<AlertsCarouselSection> createState() => _AlertsCarouselSectionState();
}

class _AlertsCarouselSectionState extends State<AlertsCarouselSection> {
  late final AlertsController _alertsController;

  @override
  void initState() {
    super.initState();

    _alertsController = Get.find<AlertsController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: CarouselSlider(
          items: alertCategories
              .map((category) => AlertCarouselCard(
                    title: category.title,
                    content: category.content,
                  ))
              .toList(),
          options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              scrollPhysics: const BouncingScrollPhysics(),
              padEnds: false,
              onPageChanged: (index, reason) {
                _alertsController.setCurrentAlertSectionIndex(index: index);
              })),
    );
  }
}
