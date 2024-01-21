import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:okoa/core/domain/use_case/core_use_cases.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

import '../../domain/model/response_state.dart';

class CoreController extends GetxController {
  final useCase = locator.get<CoreUseCases>();

  /// User Data
  final okoaUser = Rxn<OkoaUser>();
  final okoaUsers = Rxn<List<OkoaUser>>();

  final hasInternet = false.obs;

  @override
  void onInit() {
    super.onInit();

    listenToInternetStatus(onStatusChanged: (status) {
      hasInternet.value = status == InternetConnectionStatus.connected;
    });

    //  toggle SOS Status
    ever(okoaUser, (callback) {});
  }

  void setOkoaUserData({required OkoaUser okoaUser}) =>
      this.okoaUser.value = okoaUser;

  void listenToInternetStatus(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      useCase.listenToInternetStatus.call(onStatusChanged: onStatusChanged);

  //  get all users from DB
  void getAllUsersFromDB() async => await useCase.getAllUsersFromDB
      .call(onFetchUsers: (users) => okoaUsers.value = users);

  //  get user data from DB
  Future<void> getUserDataFromDatabase(
          {required String uid,
          required Function(OkoaUser okoaUser) onGetUserData}) async =>
      useCase.getUserDataFromDB.call(uid: uid, onGetUserData: onGetUserData);

  //  update user data
  Future<void> updateUserDataOnDB(
          {required Map<String, dynamic> data,
          String? uid,
          required Function(ResponseState response) onResponse}) async =>
      await useCase.updateUserDataOnDB
          .call(data: data, onResponse: onResponse, uid: uid);

  void listenToUserDataonDB(
          {required String uid,
          required Function(OkoaUser okoaUser) onGetUserData}) =>
      useCase.listenToUserDataOnDB.call(uid: uid, onGetUserData: onGetUserData);
}
