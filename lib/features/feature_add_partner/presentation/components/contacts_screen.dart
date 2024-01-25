import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_add_partner/domain/model/okoa_partner.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/contact_card.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../feature_track/presentation/components/track_partner_card.dart';
import '../controller/partner_controller.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  late final CoreController _coreController;
  late final PartnerController _partnerController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _partnerController = Get.find<PartnerController>();
    _coreController.getAllUsersFromDB();
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  contacts header
          Obx(
            () => Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: _partnerController.selectedPartners.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/partners.svg",
                          width: 150,
                          height: 150,
                        ),
                        const SizedBox(height: 12),
                        Text("Select contacts to add as partners.",
                            style: Theme.of(context).textTheme.bodyMedium)
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text("Requests",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontWeight,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color)),
                        ),
                        Expanded(
                          child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: ListView.separated(
                                itemBuilder: (context, index) => index == 0
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: TrackPartnerCard(
                                          avatarUrl: _coreController
                                              .okoaUsers.value!
                                              .firstWhereOrNull((user) =>
                                                  user.userId ==
                                                  _partnerController
                                                      .selectedPartners[index]
                                                      .receiverId)
                                              ?.avatarUrl,
                                          contactName: _partnerController
                                              .selectedPartners
                                              .map((partner) =>
                                                  partner.receiverContactName)
                                              .toList()[index],
                                        ),
                                      )
                                    : TrackPartnerCard(
                                        avatarUrl: _coreController
                                            .okoaUsers.value!
                                            .firstWhereOrNull((user) =>
                                                user.userId ==
                                                _partnerController
                                                    .selectedPartners[index]
                                                    .receiverId)
                                            ?.avatarUrl,
                                        contactName: _partnerController
                                            .selectedPartners
                                            .map((partner) =>
                                                partner.receiverContactName)
                                            .toList()[index],
                                      ),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 24),
                                itemCount:
                                    _partnerController.selectedPartners.length,
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                              )),
                        )
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            flex: 4,
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                    color: Theme.of(context).primaryColorLight),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Text("Contacts on Okoa",
                        style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.bodyLarge!.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .fontWeight,
                            color:
                                Theme.of(context).textTheme.bodyLarge!.color)),
                    const SizedBox(height: 16),
                    Obx(() {
                      final allUsers = _coreController.okoaUsers.value;
                      List<Contact>? originalContacts = <Contact>[
                        ..._partnerController.contacts.value ?? []
                      ];
                      List<Contact> contactsOnOkoa = <Contact>[];
                      List<Contact> rearrangedContactsOnOkoa = <Contact>[];

                      if (allUsers != null) {
                        contactsOnOkoa = originalContacts
                            .where((contact) => contact.phones
                                .map(
                                    (phone) => phone.number.replaceAll(' ', ''))
                                .toList()
                                .any((number) => allUsers
                                    .map((user) =>
                                        user.phone.replaceAll(' ', ''))
                                    .toList()
                                    .contains(number)))
                            .toList();

                        rearrangedContactsOnOkoa = [
                          ...contactsOnOkoa,
                        ];

                        //  remove contacts already in contacts on okoa from partner contacts value
                        for (Contact contact in contactsOnOkoa) {
                          originalContacts.removeWhere((c) =>
                              c.phones == contact.phones &&
                              c.displayName == contact.displayName);
                        }

                        rearrangedContactsOnOkoa.addAll(originalContacts);
                      }

                      return _partnerController.contacts.value == null
                          ? Expanded(
                              child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Theme.of(context).primaryColorLight,
                                  child: const Center(child: LottieLoader())),
                            )
                          : _partnerController.contacts.value!.isEmpty
                              ? Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    color: Theme.of(context).primaryColorLight,
                                    child: const Center(
                                      child: Text("No contacts found."),
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: ListView.separated(
                                    padding: EdgeInsets.zero,
                                    physics: const BouncingScrollPhysics(),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(height: 16),
                                    itemBuilder: (context, index) {
                                      final currentUser =
                                          allUsers?.firstWhereOrNull((user) {
                                        final phones =
                                            rearrangedContactsOnOkoa[index]
                                                .phones
                                                .map((phone) => phone.number
                                                    .replaceAll(' ', ''))
                                                .toList();

                                        return user.phone.replaceAll(' ', '') ==
                                            (phones.isEmpty ? '' : phones[0]);
                                      });

                                      return Obx(
                                        () => ContactCard(
                                          contact:
                                              rearrangedContactsOnOkoa[index],
                                          contactUserImage:
                                              currentUser?.avatarUrl ?? '',
                                          isOkoaUser: currentUser != null,
                                          isPartner: currentUser != null &&
                                              _coreController
                                                  .okoaUser.value!.partners
                                                  .contains(currentUser.userId),
                                          isSelected: _partnerController
                                              .selectedPartners
                                              .map((partner) =>
                                                  partner.receiverId)
                                              .contains(currentUser?.userId),
                                          isRequested: _coreController
                                              .okoaUser.value!.sentRequests
                                              .map((user) =>
                                                  user.receiverContactPhone)
                                              .toList()
                                              .contains(rearrangedContactsOnOkoa[
                                                          index]
                                                      .phones
                                                      .map((e) => e.number)
                                                      .toList()
                                                      .isNotEmpty
                                                  ? rearrangedContactsOnOkoa[
                                                          index]
                                                      .phones
                                                      .map((e) => e.number)
                                                      .toList()[0]
                                                  : ''),
                                          onTap: currentUser == null ||
                                                  _coreController.okoaUser
                                                      .value!.sentRequests
                                                      .map((user) => user
                                                          .receiverContactPhone)
                                                      .toList()
                                                      .contains(
                                                          rearrangedContactsOnOkoa[
                                                                  index]
                                                              .phones
                                                              .map((e) =>
                                                                  e.number)
                                                              .toList()[0])
                                              ? () {}
                                              : () {
                                                  _partnerController.togglePartner(
                                                      okoaPartner: OkoaPartner(
                                                          senderId:
                                                              _coreController
                                                                  .okoaUser
                                                                  .value!
                                                                  .userId,
                                                          receiverId:
                                                              currentUser
                                                                  .userId,
                                                          receiverContactName:
                                                              rearrangedContactsOnOkoa[
                                                                      index]
                                                                  .displayName,
                                                          receiverContactPhone:
                                                              rearrangedContactsOnOkoa[
                                                                      index]
                                                                  .phones
                                                                  .map((p) =>
                                                                      p.number)
                                                                  .toList()[0]));
                                                },
                                          onInviteTap: () async {
                                            final result =
                                                await Share.shareWithResult(
                                                    "Welcome to Okoa");

                                            if (result.status ==
                                                ShareResultStatus.success) {
                                              //  show a message here
                                            }
                                          },
                                          onPartnerTap: () async {},
                                        ),
                                      );
                                    },
                                    itemCount: rearrangedContactsOnOkoa.length,
                                  ),
                                );
                    }),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
