import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

class ContactCard extends StatefulWidget {
  final Contact contact;

  const ContactCard({super.key, required this.contact});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  profile pic
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl:
                    'https://images.unsplash.com/photo-1629450646257-87251b691036?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                placeholder: (context, url) => CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          //  name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.contact.displayName,
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.titleMedium!.fontWeight,
                    color: Theme.of(context).textTheme.bodyLarge!.color),
              ),
              const SizedBox(height: 12),
              Text(
                widget.contact.phones[0].number,
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.bodySmall!.fontWeight,
                    color: Theme.of(context).textTheme.bodyMedium!.color),
              ),
            ],
          )
        ],
      ),
    );
  }
}
