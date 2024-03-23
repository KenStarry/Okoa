import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? avatarUrl;
  final Size size;
  final bool showShadow;

  const Avatar(
      {super.key,
      required this.avatarUrl,
      required this.size,
      this.showShadow = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColorLight,
          boxShadow: showShadow
              ? [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5)
                ]
              : null),
      child: avatarUrl == null || avatarUrl!.isEmpty
          ? const Icon(Icons.person_rounded)
          : ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: avatarUrl!,
                placeholder: (context, url) => CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
    );
  }
}
