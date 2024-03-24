import 'package:get/get.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_settings/domain/use_case/settings_use_cases.dart';

class SettingsController extends GetxController {
  final useCases = locator.get<SettingsUseCases>();

  final simCards = <SimCard>[].obs;

  /// Get Sim Cards
  Future<void> getSimCards() async =>
      await useCases.getSimCards.call(onSimCardsFetched: (sims) {
        simCards.value = sims;

        print("SIM CARDS FETCHED!!!!!!!!!!!!!!!!!! : ${sims.map((e) => e.carrierName)}");
      });
}
