import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_track/domain/repository/track_repository.dart';

class RequestLocationService {
  final repo = locator.get<TrackRepository>();

  Future<void> call() async => await repo.requestLocationService();
}
