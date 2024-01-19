import 'package:okoa/features/feature_add_partner/domain/use_cases/check_contact_permission.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/get_contacts.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/request_contact_permission.dart';

class PartnerUseCases {
  final CheckContactPermission checkContactPermission;
  final RequestContactPermission requestContactPermission;
  final GetContactsUseCase getContactsUseCase;

  PartnerUseCases(
      {required this.checkContactPermission,
      required this.requestContactPermission,
      required this.getContactsUseCase});
}