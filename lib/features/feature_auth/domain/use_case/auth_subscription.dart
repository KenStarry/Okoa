import 'dart:async';

import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthSubscription {
  final repo = locator.get<AuthRepository>();

  StreamSubscription<AuthState> call(
          {required Function(AuthState) onAuthStateChanged}) =>
      repo.authSubscription(onAuthStateChanged: onAuthStateChanged);
}
