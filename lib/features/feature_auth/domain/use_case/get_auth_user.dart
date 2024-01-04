import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GetAuthUser {
  final repo = locator.get<AuthRepository>();

  User? call() => repo.getAuthUser();
}
