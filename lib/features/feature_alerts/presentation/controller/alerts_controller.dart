import 'package:get/get.dart';

class AlertsController extends GetxController {
  final currentAlertSectionIndex = 0.obs;

  void setCurrentAlertSectionIndex({required int index}) =>
      currentAlertSectionIndex.value = index;
}
