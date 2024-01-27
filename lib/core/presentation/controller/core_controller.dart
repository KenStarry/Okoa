import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:okoa/core/domain/model/sos_state.dart';
import 'package:okoa/core/domain/use_case/core_use_cases.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/theme/colors.dart';

import '../../domain/model/response_state.dart';

class CoreController extends GetxController {
  final useCase = locator.get<CoreUseCases>();
  final authController = Get.find<AuthController>();

  /// User Data
  final okoaUser = Rxn<OkoaUser>();
  final okoaUsers = Rxn<List<OkoaUser>>();
  final partnerDetails = <String, OkoaUser>{}.obs;

  final hasInternet = false.obs;
  final currentDateTime = DateTime.now().obs;
  final sosState = SosState.safe.obs;
  final sosColor = accent.obs;

  @override
  void onInit() {
    super.onInit();

    listenToInternetStatus(onStatusChanged: (status) {
      hasInternet.value = status == InternetConnectionStatus.connected;

      if (status == InternetConnectionStatus.connected) {
        listenToUserDataonDB(
            uid: authController.getAuthUser()!.id,
            onGetUserData: (user) {
              setOkoaUserData(okoaUser: user);

              //  retrive partner details
              getPartnerDetails(partnerIds: user.partners);
            });
      }
    });

    //  toggle SOS State
    ever(okoaUser, (user) {
      sosState.value = user != null && user.receivedRequests.isNotEmpty
          ? SosState.warning
          : SosState.safe;
    });

    //  toggle SOS Color
    ever(sosState, (state) {
      switch (state) {
        case SosState.safe:
          sosColor.value = accent;
          break;
        case SosState.warning:
          sosColor.value = sosOrange;
          break;
        case SosState.sos:
          sosColor.value = sosRed;
          break;
      }
    });
  }

  void updateCurrentDateTime({required DateTime date}) =>
      currentDateTime.value = date;

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
      await useCase.getUserDataFromDB
          .call(uid: uid, onGetUserData: onGetUserData);

  void getPartnerDetails({required List<String> partnerIds}) {
    var partnerData = <String, OkoaUser>{
      okoaUser.value!.userId.toString(): okoaUser.value!
    };

    for (String id in partnerIds) {
      //  get data from the DB
      listenToUserDataonDB(
          uid: id,
          onGetUserData: (user) {
            partnerData[id] = user;

            partnerDetails.value = partnerData;
          });
    }
  }

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
