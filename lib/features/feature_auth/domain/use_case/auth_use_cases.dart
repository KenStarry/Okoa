import 'package:okoa/features/feature_auth/domain/use_case/auth_subscription.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_in.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_in_with_google.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_out.dart';
import 'package:okoa/features/feature_auth/domain/use_case/sign_up.dart';

import 'get_auth_user.dart';

class AuthUseCases {
  final SignUp signUp;
  final SignIn signIn;
  final SignInWithGoogle signInWithGoogle;
  final SignOut signOut;
  final GetAuthUser getAuthUser;
  final AuthSubscription authSubscription;

  AuthUseCases(
      {required this.signUp,
      required this.signIn,
      required this.signInWithGoogle,
      required this.signOut,
      required this.getAuthUser,
      required this.authSubscription});
}
