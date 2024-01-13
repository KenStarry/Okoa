
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';

void trackDI({required GetIt locator}) {
  /// Location
  locator.registerLazySingleton<Location>(() => Location());
}
