import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

import '../../../features/feature_auth/domain/model/okoa_user.dart';

class GetAllUsersFromDB {
  final repo = locator.get<CoreRepository>();

  Future<void> call(
          {required Function(List<OkoaUser> users) onFetchUsers}) async =>
      await repo.getAllUsersFromDB(onFetchUsers: onFetchUsers);
}
