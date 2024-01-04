import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {
  /// User Sign Up
  Future<void> signUp({required String email, required String password});

  /// Sign In
  Future<void> signIn({required String email, required String password});

  /// Sign In with Google
  Future<AuthResponse> signInWithGoogle();

  /// Sign Out
  Future<void> signOut();

  /// Get Auth User
  User? getAuthUser();

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
      {required Function(AuthState) onAuthStateChanged});
}
