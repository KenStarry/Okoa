import 'package:get_it/get_it.dart';
import 'package:okoa/features/feature_auth/data/repository/auth_repository_impl.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';

void authDI({required GetIt locator}) {

  /// Repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}