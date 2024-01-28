import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:okoa/core/domain/model/response_state.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class CoreRepository {
  /// Fetch all users
  Future<void> getAllUsersFromDB(
      {required Function(List<OkoaUser> users) onFetchUsers});

  /// Get User Data
  Future<void> getUserDataFromDatabase(
      {required String uid, required Function(OkoaUser) onGetUserData});

  /// Update User Data
  Future<void> updateUserDataOnDB(
      {required Map<String, dynamic> data,
      String? uid,
      required Function(ResponseState response) onResponse});

  /// Listen to User Data
  void listenToUserDataonDB(
      {required String uid,
      required Function(OkoaUser okoaUser) onGetUserData});

  /// Listen to Internet Status
  void listenToInternetStatus(
      {required Function(InternetConnectionStatus status) onStatusChanged});

  /// Encrypt Data
  dynamic encryptData({required dynamic data});
}
