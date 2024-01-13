import 'package:okoa/features/feature_track/domain/use_case/listen_to_current_location.dart';
import 'package:okoa/features/feature_track/domain/use_case/request_location_service.dart';

class TrackUseCase {
  final RequestLocationService requestLocationService;
  final ListenToCurrentLocation listenToCurrentLocation;

  TrackUseCase(
      {required this.requestLocationService,
      required this.listenToCurrentLocation});
}
