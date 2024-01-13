import 'package:location/location.dart';

abstract class TrackRepository {
  /// Request Location Service
  Future<void> requestLocationService();

  /// Listen to Current Location
  Stream listenToCurrentLocation(
      {required Function(LocationData locationData) onLocationChanged});
}
