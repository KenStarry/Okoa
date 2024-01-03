import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';

void initializeControllers() {
  Get.lazyPut(() => AuthController(), fenix: true);
}