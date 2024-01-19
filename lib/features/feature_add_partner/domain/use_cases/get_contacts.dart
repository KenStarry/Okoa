import 'package:flutter_contacts/contact.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';

class GetContactsUseCase {
  final repo = locator.get<PartnerRepository>();

  void call({required Function(List<Contact> contacts) onContactsFetched}) =>
      repo.getContacts(onContactsFetched: onContactsFetched);
}
