import 'package:okoa/features/feature_add_partner/domain/use_cases/check_contact_permission.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/get_contacts.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/request_contact_permission.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/send_partner_request.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/update_partners_on_db.dart';

class PartnerUseCases {
  final CheckContactPermission checkContactPermission;
  final RequestContactPermission requestContactPermission;
  final GetContactsUseCase getContactsUseCase;
  final SendPartnerRequest sendPartnerRequest;
  final UpdatePartnersOnDB updatePartnersOnDB;

  PartnerUseCases(
      {required this.checkContactPermission,
      required this.requestContactPermission,
      required this.getContactsUseCase,
      required this.sendPartnerRequest,
      required this.updatePartnersOnDB});
}
