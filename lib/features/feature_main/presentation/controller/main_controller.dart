import 'package:get/get.dart';

class MainController extends GetxController {
  final activeBottomBarIndex = 0.obs;

  void setActiveBottomBarIndex({required int index}) =>
      activeBottomBarIndex.value = index;
}
