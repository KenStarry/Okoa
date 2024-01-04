import 'dart:async';

import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/use_case/auth_use_cases.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController {
  final authUseCase = locator.get<AuthUseCases>();

  //  current screen
  final isLogin = false.obs;

  void setIsLogin({required bool isLogin}) => this.isLogin.value = isLogin;

  /// Sign Up
  Future<void> signUp(
          {required String email, required String password}) async =>
      await authUseCase.signUp.call(email: email, password: password);

  /// Sign In
  Future<void> signIn(
          {required String email, required String password}) async =>
      await authUseCase.signIn.call(email: email, password: password);

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      authUseCase.authSubscription.call(onAuthStateChanged: onAuthStateChanged);
}
