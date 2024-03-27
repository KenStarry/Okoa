import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

import '../../../features/feature_auth/domain/model/okoa_user.dart';

class ListenToUserDataOnDB {
  final repo = locator.get<CoreRepository>();

  void call(
          {required String? uid,
          required Function(OkoaUser okoaUser) onGetUserData}) =>
      repo.listenToUserDataonDB(uid: uid, onGetUserData: onGetUserData);
}
