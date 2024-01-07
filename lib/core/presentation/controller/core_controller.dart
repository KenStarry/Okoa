import 'package:get/get.dart';
import 'package:okoa/core/domain/use_case/core_use_cases.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/domain/model/okoa_user.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';

class CoreController extends GetxController {
  final authController = Get.find<AuthController>();
  final useCase = locator.get<CoreUseCases>();

  /// User Data
  final okoaUser = Rxn<OkoaUser>();

  @override
  void onInit() {
    super.onInit();

    getUserDataFromDatabase(
        uid: authController.getAuthUser()!.id, onGetUserData: (user) {
          print("------------USER OBJECT DATA : $user}");
    });
  }

  //  get user data from DB
  Future<void> getUserDataFromDatabase(
          {required String uid,
          required Function(OkoaUser okoaUser) onGetUserData}) async =>
      useCase.getUserDataFromDB.call(uid: uid, onGetUserData: onGetUserData);
}
