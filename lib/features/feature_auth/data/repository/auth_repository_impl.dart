import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl extends AuthRepository {

  final supabase = locator.get<SupabaseClient>();

  @override
  Future<void> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}