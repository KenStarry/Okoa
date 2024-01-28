import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class EncryptAES {
  final repo = locator.get<CoreRepository>();

  call({required data, required String key}) =>
      repo.encryptAES(data: data, key: key);
}
