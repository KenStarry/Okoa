import 'dart:async';

import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl extends AuthRepository {
  final supabase = locator.get<SupabaseClient>();

  /// Sign Up
  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await supabase.auth.signUp(email: email, password: password);
    } on SupabaseRealtimeError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Sign In
  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
    } catch (error) {
      throw Exception(error);
    }
  }

  /// Sign Out
  @override
  Future<void> signOut() async {
    try {
      await supabase.auth.signOut(scope: SignOutScope.local);
    } catch (error) {
      throw Exception(error);
    }
  }

  /// Auth Subscription
  @override
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      supabase.auth.onAuthStateChange.listen(onAuthStateChanged);
}
