import 'package:location/location.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_track/domain/repository/track_repository.dart';

class ListenToCurrentLocation {
  final repo = locator.get<TrackRepository>();

  void call({required Function(LocationData locationData) onLocationChanged}) =>
      repo.listenToCurrentLocation(onLocationChanged: onLocationChanged);
}
