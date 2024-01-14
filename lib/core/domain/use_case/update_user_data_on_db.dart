import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class UpdateUserDataOnDB {
  final repo = locator.get<CoreRepository>();

  Future<void> call(
          {required Map<String, dynamic> data,
          String? uid,
          required Function(Response response) onResponse}) async =>
      await repo.updateUserDataOnDB(
          data: data, uid: uid, onResponse: onResponse);
}
