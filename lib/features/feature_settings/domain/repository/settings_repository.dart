import 'package:mobile_number/mobile_number.dart';

abstract class SettingsRepository {
  /// Fetch Simcard
  Future<void> getSimCards(
      {required Function(List<SimCard> simCards) onSimCardsFetched});

  /// Message Picked Pref
  Future<void> saveDataToPrefs({required String key, required dynamic value});
}
