import 'package:get_it/get_it.dart';
import 'package:okoa/features/feature_settings/data/repository/settings_repository_impl.dart';
import 'package:okoa/features/feature_settings/domain/repository/settings_repository.dart';
import 'package:okoa/features/feature_settings/domain/use_case/get_sim_cards.dart';
import 'package:okoa/features/feature_settings/domain/use_case/save_data_to_prefs.dart';
import 'package:okoa/features/feature_settings/domain/use_case/settings_use_cases.dart';

void settingsDI({required GetIt locator}) {
  /// Settings Repo
  locator.registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImpl());

  /// Settings Use Cases
  locator.registerLazySingleton<SettingsUseCases>(() => SettingsUseCases(
      getSimCards: GetSimCards(), saveDataToPrefs: SaveDataToPrefs()));
}
