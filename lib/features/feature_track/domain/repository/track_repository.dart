import 'package:location/location.dart';

abstract class TrackRepository {
  /// Request Location Service
  Future<void> requestLocationService();

  /// Listen to Current Location
  void listenToCurrentLocation(
      {required Function(LocationData locationData) onLocationChanged});
}
