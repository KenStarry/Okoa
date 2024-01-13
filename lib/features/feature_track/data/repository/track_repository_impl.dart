import 'package:location/location.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_track/domain/repository/track_repository.dart';

class TrackRepositoryImpl extends TrackRepository {
  final location = locator.get<Location>();

  Future<bool> _checkLocationServiceEnabled() async =>
      await location.serviceEnabled();

  /// Request Location
  @override
  Future<void> requestLocationService() async {
    final serviceEnabled = await _checkLocationServiceEnabled();

    if (serviceEnabled) {
      await location.requestService();
    }
  }

  /// Listen to current location
  @override
  Stream listenToCurrentLocation(
      {required Function(LocationData locationData) onLocationChanged}) {

  }
}
