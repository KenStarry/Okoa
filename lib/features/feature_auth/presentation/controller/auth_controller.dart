import 'package:get/get.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/use_case/auth_use_cases.dart';

class AuthController extends GetxController {
  final authUseCase = locator.get<AuthUseCases>();

  //  current screen
  final isLogin = false.obs;

  void setIsLogin({required bool isLogin}) => this.isLogin.value = isLogin;

  /// Sign Up
  Future<void> signUp(
          {required String email, required String password}) async =>
      await authUseCase.signUp.call(email: email, password: password);
}
