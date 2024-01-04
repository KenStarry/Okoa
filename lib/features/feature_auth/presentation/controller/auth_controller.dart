import 'dart:async';

import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/use_case/auth_use_cases.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController {
  final authUseCase = locator.get<AuthUseCases>();

  late final StreamSubscription<AuthState> _subscription;
  final currentEvent = AuthChangeEvent.signedOut.obs;
  final currentSession = Rxn<Session>();

  //  current screen
  final isLogin = false.obs;

  @override
  void onInit() {
    super.onInit();

    //  subscribe to auth
    _subscription = authSubscription(onAuthStateChanged: (authState) {
      currentEvent.value = authState.event;
      currentSession.value = authState.session;
    });
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }

  void setIsLogin({required bool isLogin}) => this.isLogin.value = isLogin;

  /// Sign Up
  Future<void> signUp(
          {required String email, required String password}) async =>
      await authUseCase.signUp.call(email: email, password: password);

  /// Sign In
  Future<void> signIn(
          {required String email, required String password}) async =>
      await authUseCase.signIn.call(email: email, password: password);

  /// Google Sign In
  Future<AuthResponse> signInWithGoogle() async =>
      await authUseCase.signInWithGoogle();

  /// Sign Out
  Future<void> signOut() async => await authUseCase.signOut();

  /// Get Auth User
  User? getAuthUser() => authUseCase.getAuthUser();

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      authUseCase.authSubscription.call(onAuthStateChanged: onAuthStateChanged);
}
