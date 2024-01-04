import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';

class SignOut {
  final repo = locator.get<AuthRepository>();

  Future<void> call() async => repo.signOut();
}
