import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class SendSMS {
  final repo = locator.get<CoreRepository>();

  Future<void> call(
          {required String phone,
          required String message,
          required int sim}) async =>
      await repo.sendSMS(phone: phone, message: message, sim: sim);
}
