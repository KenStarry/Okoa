import 'package:okoa/features/feature_auth/domain/use_case/auth_subscription.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_in.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_up.dart';

class AuthUseCases {
  final SignUp signUp;
  final SignIn signIn;
  final AuthSubscription authSubscription;

  AuthUseCases(
      {required this.signUp,
      required this.signIn,
      required this.authSubscription});
}
