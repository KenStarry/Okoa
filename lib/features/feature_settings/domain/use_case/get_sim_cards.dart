import 'package:mobile_number/sim_card.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_settings/domain/repository/settings_repository.dart';

class GetSimCards {
  final repo = locator.get<SettingsRepository>();

  Future<void> call(
          {required Function(List<SimCard> simCards)
              onSimCardsFetched}) async =>
      await repo.getSimCards(onSimCardsFetched: onSimCardsFetched);
}
