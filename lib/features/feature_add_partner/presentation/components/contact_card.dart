import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:okoa/theme/colors.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;
  final String contactUserImage;
  final bool isOkoaUser;
  final bool isPartner;
  final bool isSelected;
  final bool isRequested;
  final VoidCallback onTap;
  final VoidCallback onInviteTap;
  final VoidCallback onPartnerTap;

  const ContactCard(
      {super.key,
      required this.contact,
      required this.contactUserImage,
      required this.isOkoaUser,
      required this.isPartner,
      required this.isSelected,
      required this.isRequested,
      required this.onTap,
      required this.onInviteTap,
      required this.onPartnerTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: double.infinity,
          height: 90,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: isSelected || isRequested
                  ? Theme.of(context).scaffoldBackgroundColor
                  : Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(24)),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                padding: isSelected || isRequested
                    ? const EdgeInsets.symmetric(horizontal: 16)
                    : EdgeInsets.zero,
                decoration: BoxDecoration(
                    color: isSelected || isRequested
                        ? Theme.of(context).scaffoldBackgroundColor
                        : Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //  profile pic
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 350),
                      width: isSelected || isRequested ? 65 : 60,
                      height: isSelected || isRequested ? 65 : 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      child: contactUserImage.isEmpty
                          ? const Icon(Icons.person_rounded)
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: CachedNetworkImage(
                                imageUrl: contactUserImage,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(
                                        color: Theme.of(context).primaryColor),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                    ),
                    const SizedBox(width: 12),
                    //  name
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            contact.displayName,
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .fontWeight,
                                color: isOkoaUser
                                    ? Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withOpacity(0.3)),
                          ),

                          isOkoaUser
                              ? const SizedBox(height: 12)
                              : const SizedBox.shrink(),

                          //  phone number
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  contact.phones.isEmpty
                                      ? 'No contact'
                                      : contact.phones[0].number,
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .fontSize,
                                      fontWeight: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .fontWeight,
                                      color: isOkoaUser
                                          ? Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .color
                                          : Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .color!
                                              .withOpacity(0.3)),
                                ),
                              ),
                              Visibility(
                                visible: isPartner,
                                child: TextButton(
                                    onPressed: onPartnerTap,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Partner",
                                          style: TextStyle(
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .fontSize,
                                              fontWeight: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .fontWeight,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                        const SizedBox(width: 8),
                                        Icon(Icons.open_in_new_rounded, color: Theme.of(context).primaryColor,)
                                      ],
                                    )),
                              ),
                              Visibility(
                                  visible: isRequested,
                                  child: Text(
                                    "Pending",
                                    style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .fontSize,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .fontWeight,
                                        color: sosOrange),
                                  )),
                              Visibility(
                                visible: !isOkoaUser,
                                child: TextButton(
                                    onPressed: onInviteTap,
                                    child: const Row(
                                      children: [
                                        Icon(Icons.share_rounded),
                                        SizedBox(width: 8),
                                        Text("Invite"),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //  tick icon
              Visibility(
                visible: isOkoaUser && (isSelected || isRequested),
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: Theme.of(context).primaryColorLight,
                            width: 5,
                            strokeAlign: BorderSide.strokeAlignOutside),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Center(
                      child: Icon(
                        Icons.done_rounded,
                        color: Theme.of(context).primaryColor,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
