import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class CoreRepository {
  /// Get User Data
  Future<void> getUserDataFromDatabase(
      {required String uid, required Function(OkoaUser) onGetUserData});

  /// Listen to User Data
  void listenToUserDataonDB(
      {required String uid,
      required Function(OkoaUser okoaUser) onGetUserData});
}
