import 'dart:ffi';

import 'package:mobile_number/mobile_number.dart';
import 'package:okoa/features/feature_settings/domain/repository/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepositoryImpl extends SettingsRepository {
  @override
  Future<void> getSimCards(
      {required Function(List<SimCard> simCards) onSimCardsFetched}) async {
    final isPremissionGranted = await MobileNumber.hasPhonePermission;

    if (isPremissionGranted) {
      //  get sim cards
      final List<SimCard> simCards = await MobileNumber.getSimCards ?? [];
      onSimCardsFetched(simCards);
    } else {
      //  Request phone permission
      await MobileNumber.requestPhonePermission;
    }
  }

  @override
  Future<void> saveDataToPrefs({required String key, required value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (value is int) {
      prefs.setInt(key, value);
    }
    if (value is bool) {
      prefs.setBool(key, value);
    }
    if (value is String) {
      prefs.setString(key, value);
    }
    if (value is double) {
      prefs.setDouble(key, value);
    }
    if (value is List<String>) {
      prefs.setStringList(key, value);
    }
  }
}
