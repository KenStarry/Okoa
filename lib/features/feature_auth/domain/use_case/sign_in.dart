import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';

class SignIn {
  final repo = locator.get<AuthRepository>();

  Future<void> call({required String email, required String password}) async =>
      repo.signIn(email: email, password: password);
}
