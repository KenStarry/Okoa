import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInWithGoogle {
  final repo = locator.get<AuthRepository>();

  Future<AuthResponse> call() async => await repo.signInWithGoogle();
}
