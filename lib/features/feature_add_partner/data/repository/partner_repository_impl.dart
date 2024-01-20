import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../di/di.dart';
import '../../domain/model/okoa_partner.dart';

class PartnerRepositoryImpl extends PartnerRepository {
  final supabase = locator.get<SupabaseClient>();

  ///  Check contacts permission
  @override
  void checkContactPermission(
      {required Function(bool isGranted) onCheckPermission}) async {
    final status = await permission_handler.Permission.contacts.status;

    onCheckPermission(status.isGranted);
  }

  ///  Get Contacts
  @override
  void getContacts(
      {required Function(List<Contact> contacts) onContactsFetched}) async {
    checkContactPermission(onCheckPermission: (isGranted) async {
      if (isGranted) {
        final contacts =
            await FlutterContacts.getContacts(withProperties: true);

        onContactsFetched(contacts);
      }
    });
  }

  ///  Request contacts permission
  @override
  void requestContactPermission(
      {required Function(bool isGranted) onRequestPermission}) async {
    final status = await permission_handler.Permission.contacts.request();

    onRequestPermission(status.isGranted);
  }

  /// Send Partnering request
  @override
  Future<void> sendPartnerRequest(
      {required List<OkoaPartner> requestedPartners}) async {
    try {
      for (OkoaPartner partner in requestedPartners) {
        final receivedRequests = await supabase
            .from('users')
            .select('received_requests')
            .eq('id', partner.receiverId)
            .single();

        final sentRequests = await supabase
            .from('users')
            .select('sent_requests')
            .eq('id', partner.senderId)
            .single();

        final requests = (receivedRequests['received_requests'] as List? ?? [])
            .map((request) => OkoaPartner.fromJson(request))
            .toList();

        final sentRequestsList = (sentRequests['sent_requests'] as List? ?? [])
            .map((request) => OkoaPartner.fromJson(request))
            .toList();

        if (!requests.contains(partner)) {
          requests.add(partner);
        }

        if (!sentRequestsList.contains(partner)) {
          sentRequestsList.add(partner);
        }

        //  update received list of partners
        await supabase.from('users').update({
          'received_requests': requests.map((r) => r.toJson()).toList()
        }).eq('id', partner.receiverId);

        //  update sent list of current user
        await supabase.from('users').update({
          'sent_requests': sentRequestsList.map((r) => r.toJson()).toList()
        }).eq('id', partner.senderId);
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
