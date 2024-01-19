import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;
  final String contactUserImage;
  final bool isOkoaUser;
  final bool isSelected;
  final VoidCallback onTap;

  const ContactCard(
      {super.key,
      required this.contact,
      required this.contactUserImage,
      required this.isOkoaUser,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 100,
        padding: isSelected
            ? const EdgeInsets.symmetric(horizontal: 16)
            : EdgeInsets.zero,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: isSelected
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
              width: isSelected ? 65 : 60,
              height: isSelected ? 65 : 60,
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
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.titleMedium!.fontWeight,
                        color: isOkoaUser
                            ? Theme.of(context).textTheme.bodyLarge!.color
                            : Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .color!
                                .withOpacity(0.3)),
                  ),

                  //  phone number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
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
                                ? Theme.of(context).textTheme.bodyMedium!.color
                                : Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color!
                                    .withOpacity(0.3)),
                      ),
                      Visibility(
                        visible: !isOkoaUser,
                        child: TextButton(
                            onPressed: () {},
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
    );
  }
}
