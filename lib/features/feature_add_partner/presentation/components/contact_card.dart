import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

class ContactCard extends StatefulWidget {
  final Contact contact;
  final String contactUserImage;
  final VoidCallback onTap;

  const ContactCard(
      {super.key,
      required this.contact,
      required this.contactUserImage,
      required this.onTap});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  profile pic
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: widget.contactUserImage.isEmpty
                  ? const Icon(Icons.person_rounded)
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CachedNetworkImage(
                        imageUrl: widget.contactUserImage,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(
                                color: Theme.of(context).primaryColor),
                        fit: BoxFit.cover,
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
                    widget.contact.displayName,
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.titleMedium!.fontWeight,
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),

                  const SizedBox(height: 12),

                  //  phone number
                  Text(
                    widget.contact.phones.isEmpty
                        ? 'No contact'
                        : widget.contact.phones[0].number,
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.bodySmall!.fontWeight,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
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
