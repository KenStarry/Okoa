import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

abstract class CoreRepository {
  /// Get User Data
  Future<void> getUserDataFromDatabase(
      {required Function(OkoaUser) onGetUserData});
}
