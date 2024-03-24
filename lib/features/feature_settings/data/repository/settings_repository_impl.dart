import 'package:mobile_number/mobile_number.dart';
import 'package:okoa/features/feature_settings/domain/repository/settings_repository.dart';

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
}
