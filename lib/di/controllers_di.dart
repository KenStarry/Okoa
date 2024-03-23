import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_add_partner/presentation/controller/partner_controller.dart';
import 'package:okoa/features/feature_alerts/presentation/controller/alerts_controller.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_main/presentation/controller/main_controller.dart';
import 'package:okoa/features/feature_settings/presentation/controller/settings_controller.dart';
import 'package:okoa/features/feature_track/presentation/controller/track_controller.dart';

void initializeControllers() {
  Get.lazyPut(() => AuthController(), fenix: true);
  Get.lazyPut(() => CoreController(), fenix: true);
  Get.lazyPut(() => MainController(), fenix: true);
  Get.lazyPut(() => TrackController(), fenix: true);
  Get.lazyPut(() => PartnerController(), fenix: true);
  Get.lazyPut(() => AlertsController(), fenix: true);
  Get.lazyPut(() => SettingsController(), fenix: true);
}
