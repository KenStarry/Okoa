import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/domain/model/response_state.dart';
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
      } else {
        requestContactPermission(onRequestPermission: (isGranted) async {
          if (isGranted) {
            final contacts =
                await FlutterContacts.getContacts(withProperties: true);

            onContactsFetched(contacts);
          }
        });
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

  @override
  Future<void> updatePartnersOnDB(
      {required String senderId,
      required String receiverId,
      required Function(ResponseState response) onResponse}) async {
    try {
      //  get current user's partners
      final currentUserPartners = await supabase
          .from('users')
          .select('partners')
          .eq('id', receiverId)
          .single();
      //  get sender user's partners (current user)
      final senderPartners = await supabase
          .from('users')
          .select('partners')
          .eq('id', senderId)
          .single();

      final currentUserPartnersToList =
          (currentUserPartners['partners'] as List<String>? ?? <String>[]);
      final senderPartnersToList =
          (senderPartners['partners'] as List<String>? ?? <String>[]);

      //  update the current user's partners with the sender ID
      if (!currentUserPartnersToList.contains(senderId)) {
        currentUserPartnersToList.add(senderId);
      }
      //  update the sender user's partners with the current user's id (receiver id)
      if (!senderPartnersToList.contains(receiverId)) {
        senderPartnersToList.add(receiverId);
      }

      //  update the table with the new values
      await supabase
          .from('users')
          .update({'partners': currentUserPartnersToList})
          .eq('id', receiverId)
          .then((value) async {
            //  remove the partner(sender) with this id from the list of received requests only
            final receivedRequests = await supabase
                .from('users')
                .select('received_requests')
                .eq('id', receiverId)
                .single();

            final sentRequests = await supabase
                .from('users')
                .select('sent_requests')
                .eq('id', senderId)
                .single();

            final receivedRequestsList =
                (receivedRequests['received_requests'] as List? ?? [])
                    .map((request) => OkoaPartner.fromJson(request))
                    .toList();

            final sentRequestsList =
                (sentRequests['sent_requests'] as List? ?? [])
                    .map((request) => OkoaPartner.fromJson(request))
                    .toList();

            final requestIds =
                [...receivedRequestsList].map((partner) => partner.senderId);

            final sentIds =
                [...sentRequestsList].map((partner) => partner.receiverId);

            if (requestIds.contains(senderId)) {
              receivedRequestsList
                  .removeWhere((partner) => partner.senderId == senderId);
            }

            if (sentIds.contains(receiverId)) {
              sentRequestsList
                  .removeWhere((partner) => partner.receiverId == receiverId);
            }

            //  update the received requests list
            await supabase.from('users').update({
              'received_requests':
                  receivedRequestsList.map((r) => r.toJson()).toList()
            }).eq('id', receiverId);

            //  update the sent requests list
            await supabase.from('users').update({
              'sent_requests':
                  receivedRequestsList.map((r) => r.toJson()).toList()
            }).eq('id', senderId);
          });

      await supabase
          .from('users')
          .update({'partners': senderPartnersToList}).eq('id', senderId);
    } catch (error) {
      throw Exception(error);
    }
  }
}
