import 'package:get/get.dart';

class AuthController extends GetxController {
  //  current screen
  final isLogin = false.obs;

  void setIsLogin({required bool isLogin}) => this.isLogin.value = isLogin;
}
