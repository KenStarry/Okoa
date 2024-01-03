import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl extends AuthRepository {
  final supabase = locator.get<SupabaseClient>();

  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await supabase.auth
          .signUp(email: email, password: password);
    } on SupabaseRealtimeError catch (error) {
      throw Exception(error.message);
    }
  }
}
