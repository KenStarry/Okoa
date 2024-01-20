import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';

import '../model/okoa_partner.dart';

class SendPartnerRequest {
  final repo = locator.get<PartnerRepository>();

  Future<void> call({required List<OkoaPartner> requestedPartners}) async =>
      await repo.sendPartnerRequest(requestedPartners: requestedPartners);
}
