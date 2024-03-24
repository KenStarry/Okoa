import 'package:okoa/features/feature_settings/domain/use_case/get_sim_cards.dart';
import 'package:okoa/features/feature_settings/domain/use_case/save_data_to_prefs.dart';

class SettingsUseCases {
  final GetSimCards getSimCards;
  final SaveDataToPrefs saveDataToPrefs;

  const SettingsUseCases(
      {required this.getSimCards, required this.saveDataToPrefs});
}
