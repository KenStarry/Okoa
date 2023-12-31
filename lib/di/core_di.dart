import 'package:get_it/get_it.dart';
import 'package:okoa/core/data/repository/core_repository_impl.dart';
import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/core/domain/use_case/core_use_cases.dart';
import 'package:okoa/core/domain/use_case/get_user_data_from_db.dart';
import 'package:okoa/core/domain/use_case/listen_to_user_data_on_db.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void coreDI({required GetIt locator}) {
  /// Supabase Client
  locator.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

  /// Core Repository
  locator.registerLazySingleton<CoreRepository>(() => CoreRepositoryimpl());

  /// Core Use Cases
  locator.registerLazySingleton<CoreUseCases>(() => CoreUseCases(
      getUserDataFromDB: GetUserDataFromDB(),
      listenToUserDataOnDB: ListenToUserDataOnDB()));
}
