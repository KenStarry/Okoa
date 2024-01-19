import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/lottie_loader.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_add_partner/presentation/components/contact_card.dart';
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

    _partnerController.getContacts();

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
              child: _partnerController.selectedPartnersIdAgainstName.isEmpty
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
                                              .firstWhere((user) =>
                                                  user.userId ==
                                                  _partnerController
                                                      .selectedPartnersIdAgainstName
                                                      .keys
                                                      .toList()[index])
                                              .avatarUrl,
                                          contactName: _partnerController
                                              .selectedPartnersIdAgainstName
                                              .values
                                              .toList()[index],
                                        ),
                                      )
                                    : TrackPartnerCard(
                                        avatarUrl: _coreController
                                            .okoaUsers.value!
                                            .firstWhere((user) =>
                                                user.userId ==
                                                _partnerController
                                                    .selectedPartnersIdAgainstName
                                                    .keys
                                                    .toList()[index])
                                            .avatarUrl,
                                        contactName: _partnerController
                                            .selectedPartnersIdAgainstName
                                            .values
                                            .toList()[index],
                                      ),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 24),
                                itemCount: _partnerController
                                    .selectedPartnersIdAgainstName.length,
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
                      List<Contact> contactsOnOkoa = <Contact>[];

                      if (_partnerController.contacts.value != null &&
                          allUsers != null) {
                        contactsOnOkoa = _partnerController.contacts.value!
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
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      final currentUser = allUsers?.firstWhere(
                                          (user) =>
                                              user.phone.replaceAll(' ', '') ==
                                              contactsOnOkoa[index]
                                                  .phones
                                                  .map((phone) => phone.number
                                                      .replaceAll(' ', ''))
                                                  .toList()[0]);
                                      final contactImage = currentUser == null
                                          ? ''
                                          : currentUser.avatarUrl;

                                      return Obx(
                                        () => ContactCard(
                                          contact: contactsOnOkoa[index],
                                          contactUserImage: contactImage,
                                          isSelected: _partnerController
                                              .selectedPartnersIdAgainstName
                                              .keys
                                              .contains(currentUser?.userId),
                                          onTap: () {
                                            //  add user to list of selected user
                                            _partnerController.togglePartner(
                                                uid: currentUser?.userId,
                                                contactName:
                                                    contactsOnOkoa[index]
                                                        .displayName);
                                          },
                                        ),
                                      );
                                    },
                                    itemCount: contactsOnOkoa.length,
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
