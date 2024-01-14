import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class CoreRepository {
  /// Get User Data
  Future<void> getUserDataFromDatabase(
      {required String uid, required Function(OkoaUser) onGetUserData});

  /// Update User Data
  Future<void> updateUserDataOnDB(
      {required String columnName, required dynamic columnValue, String? uid});

  /// Listen to User Data
  void listenToUserDataonDB(
      {required String uid,
      required Function(OkoaUser okoaUser) onGetUserData});
}
