import 'package:get_it/get_it.dart';
import 'package:okoa/features/feature_settings/data/repository/settings_repository_impl.dart';
import 'package:okoa/features/feature_settings/domain/repository/settings_repository.dart';

void settingsDI({required GetIt locator}) {
  /// Settings Repo
  locator.registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImpl());
}
