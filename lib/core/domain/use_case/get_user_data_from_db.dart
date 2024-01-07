import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

import '../../../features/feature_auth/domain/model/okoa_user.dart';

class GetUserDataFromDB {
  final repo = locator.get<CoreRepository>();

  Future<void> call(
          {required String uid,
          required Function(OkoaUser okoaUser) onGetUserData}) async =>
      await repo.getUserDataFromDatabase(
          uid: uid, onGetUserData: onGetUserData);
}
