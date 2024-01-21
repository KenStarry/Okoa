import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';

import '../../../../core/domain/model/response_state.dart';

class UpdatePartnersOnDB {
  final repo = locator.get<PartnerRepository>();

  Future<void> call(
          {required String senderId,
          required String receiverId,
          required Function(ResponseState response) onResponse}) async =>
      await repo.updatePartnersOnDB(
          senderId: senderId, receiverId: receiverId, onResponse: onResponse);
}
