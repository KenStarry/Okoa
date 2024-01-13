import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:okoa/features/feature_track/data/repository/track_repository_impl.dart';
import 'package:okoa/features/feature_track/domain/repository/track_repository.dart';

void trackDI({required GetIt locator}) {
  /// Location
  locator.registerLazySingleton<Location>(() => Location());

  /// Track Repo
  locator.registerLazySingleton<TrackRepository>(() => TrackRepositoryImpl());
}
