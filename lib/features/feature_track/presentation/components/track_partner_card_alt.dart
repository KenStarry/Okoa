import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/components/avatar.dart';

import '../../../../core/presentation/controller/core_controller.dart';
import '../../../../theme/colors.dart';
import '../../../feature_auth/domain/model/okoa_user.dart';

class TrackPartnerCardAlt extends StatefulWidget {
  final String partnerId;

  const TrackPartnerCardAlt({super.key, required this.partnerId});

  @override
  State<TrackPartnerCardAlt> createState() => _TrackPartnerCardAltState();
}

class _TrackPartnerCardAltState extends State<TrackPartnerCardAlt> {
  late final CoreController _coreController;
  OkoaUser? currentUser;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _coreController.getUserDataFromDatabase(
          uid: widget.partnerId,
          onGetUserData: (data) {
            currentUser = data;

            setState(() {});
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //  image
        Avatar(
          avatarUrl: currentUser?.avatarUrl,
          size: const Size(80, 80),
          showShadow: true,
        ),

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

        //  partner name - check if the user is in the list of contacts and use their names instead
        Text(
            currentUser?.userName == null
                ? "No name"
                : currentUser?.userName ==
                        _coreController.okoaUser.value!.userName
                    ? "${currentUser?.userName} (Me)"
                    : currentUser!.userName,
            style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
