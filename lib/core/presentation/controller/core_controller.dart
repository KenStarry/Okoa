import 'package:get/get.dart';
import 'package:okoa/core/domain/use_case/core_use_cases.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';

class CoreController extends GetxController {
  final useCase = locator.get<CoreUseCases>();

  /// User Data
  final okoaUser = Rxn<OkoaUser>();

  void setOkoaUserData({required OkoaUser okoaUser}) =>
      this.okoaUser.value = okoaUser;

  //  get user data from DB
  Future<void> getUserDataFromDatabase(
          {required String uid,
          required Function(OkoaUser okoaUser) onGetUserData}) async =>
      useCase.getUserDataFromDB.call(uid: uid, onGetUserData: onGetUserData);

  void listenToUserDataonDB(
          {required String uid,
          required Function(OkoaUser okoaUser) onGetUserData}) =>
      useCase.listenToUserDataOnDB.call(uid: uid, onGetUserData: onGetUserData);
}
