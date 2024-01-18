import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  profile pic
          Obx(
            () => Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: _coreController.okoaUser.value != null &&
                      _coreController.okoaUser.value!.avatarUrl.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CachedNetworkImage(
                        imageUrl: _coreController.okoaUser.value!.avatarUrl,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(
                                color: Theme.of(context).primaryColor),
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Icon(Icons.person_rounded),
            ),
          )
        ],
      ),
    );
  }
}
