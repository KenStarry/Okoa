import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class DecryptAES {
  final repo = locator.get<CoreRepository>();

  call({required encryptedData, required String key}) =>
      repo.decryptAES(encryptedData: encryptedData, key: key);
}
