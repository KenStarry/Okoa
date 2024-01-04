import 'package:get_it/get_it.dart';
import 'package:okoa/features/feature_auth/data/repository/auth_repository_impl.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:okoa/features/feature_auth/domain/use_case/auth_subscription.dart';
import 'package:okoa/features/feature_auth/domain/use_case/auth_use_cases.dart';
import 'package:okoa/features/feature_auth/domain/use_case/get_auth_user.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_in.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_in_with_google.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_out.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_up.dart';

void authDI({required GetIt locator}) {
  /// Repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  /// Use Cases
  locator.registerLazySingleton<AuthUseCases>(() => AuthUseCases(
      signUp: SignUp(),
      signIn: SignIn(),
      signInWithGoogle: SignInWithGoogle(),
      signOut: SignOut(),
      getAuthUser: GetAuthUser(),
      authSubscription: AuthSubscription()));
}
