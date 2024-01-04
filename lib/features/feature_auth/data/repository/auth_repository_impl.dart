import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
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

  /// Google Auth
  @override
  Future<AuthResponse> signInWithGoogle() async {
    try {
      const webClientId =
          "280378820350-k220ndbe69mrhalu64rai1pl6p53j71b.apps.googleusercontent.com";

      final googleSignIn = GoogleSignIn(serverClientId: webClientId);

      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) {
        throw Exception("No Access Token found!");
      }

      if (idToken == null) {
        throw Exception("No ID Token found!");
      }

      return supabase.auth.signInWithIdToken(
          provider: OAuthProvider.google,
          idToken: idToken,
          accessToken: accessToken);

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

  /// Auth User
  @override
  User? getAuthUser() => supabase.auth.currentUser;

  /// Auth Subscription
  @override
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      supabase.auth.onAuthStateChange.listen(onAuthStateChanged);
}
