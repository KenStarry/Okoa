import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:okoa/features/feature_track/data/repository/track_repository_impl.dart';
import 'package:okoa/features/feature_track/domain/repository/track_repository.dart';
import 'package:okoa/features/feature_track/domain/use_case/request_location_service.dart';
import 'package:okoa/features/feature_track/domain/use_case/track_use_case.dart';

void trackDI({required GetIt locator}) {
  /// Location
  locator.registerLazySingleton<Location>(() => Location());

  /// Track Repo
  locator.registerLazySingleton<TrackRepository>(() => TrackRepositoryImpl());

  /// Track Use Cases
  locator.registerLazySingleton<TrackUseCase>(
      () => TrackUseCase(requestLocationService: RequestLocationService()));
}
