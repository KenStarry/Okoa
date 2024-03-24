import 'package:okoa/core/domain/repository/core_repository.dart';
import 'package:okoa/di/di.dart';

class MakePhoneCall {
  final repo = locator.get<CoreRepository>();

  Future<void> call({required String phoneNumber}) async =>
      await repo.makePhoneCall(phoneNumber: phoneNumber);
}
