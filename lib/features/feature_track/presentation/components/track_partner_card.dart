import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:okoa/core/presentation/components/avatar.dart';

import '../../../../theme/colors.dart';

class TrackPartnerCard extends StatelessWidget {
  final String? avatarUrl;
  final String? contactName;

  const TrackPartnerCard({super.key, this.avatarUrl, this.contactName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //  image
        Avatar(avatarUrl: avatarUrl, size: const Size(80, 80), showShadow: true,),

        const SizedBox(height: 12),
        // Container(
        //   width: 80,
        //   height: 80,
        //   margin: const EdgeInsets.only(bottom: 10, top: 8),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(200),
        //       color: Theme.of(context).scaffoldBackgroundColor,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black.withOpacity(0.1),
        //             blurRadius: 10,
        //             spreadRadius: 5)
        //       ]),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(200),
        //     child: avatarUrl == null
        //         ? Image.asset(
        //             "assets/images/curly_hair_man.png",
        //             width: double.infinity,
        //             height: double.infinity,
        //           )
        //         : avatarUrl != null && avatarUrl!.isNotEmpty
        //             ? CachedNetworkImage(
        //                 imageUrl: avatarUrl!,
        //                 placeholder: (context, url) =>
        //                     CircularProgressIndicator(
        //                         color: Theme.of(context).primaryColor),
        //                 fit: BoxFit.cover,
        //               )
        //             : const Icon(Icons.person_rounded),
        //   ),
        // ),

        //  partner name
        Text(contactName ?? "No name", style: Theme
            .of(context)
            .textTheme
            .bodyMedium)
      ],
    );
  }
}
