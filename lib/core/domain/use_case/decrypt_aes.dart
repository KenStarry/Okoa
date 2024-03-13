import 'package:encrypt/encrypt.dart';
import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class DecryptAES {
  final repo = locator.get<CoreRepository>();

  call({required Encrypted encryptedData, required Encrypter encrypter, required String key}) =>
      repo.decryptAES(encryptedData: encryptedData, encrypter: encrypter, key: key);
}
