import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_settings/domain/repository/settings_repository.dart';

class SaveDataToPrefs {
  final repo = locator.get<SettingsRepository>();

  Future<void> call({required String key, required value}) async =>
      await repo.saveDataToPrefs(key: key, value: value);
}
