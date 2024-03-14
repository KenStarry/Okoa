import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/core/utils/extensions/string_extensions.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  late final CoreController _coreController;
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
          ),

          const SizedBox(width: 12),

          //  profile name
          Obx(() => Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _coreController.okoaUser.value != null &&
                              _coreController
                                  .okoaUser.value!.userName.isNotEmpty
                          ? _coreController.okoaUser.value!.userName
                          : "Anonymous",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),

                    const SizedBox(height: 8),

                    //  internet connection status
                    Row(
                      children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: _coreController.hasInternet.value
                                ? Colors.greenAccent
                                : Colors.redAccent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _coreController.hasInternet.value
                              ? "Online"
                              : "Offline",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                ),
              )),

          //  daytime
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    _authController.signOut();
                  },
                  icon: Icon(
                    Icons.logout_rounded,
                    color: Theme.of(context).iconTheme.color!,
                  )),
              Obx(
                () {
                  int currentHour = int.parse(_coreController
                      .currentDateTime.value
                      .toString()
                      .getCurrentHourIn24);
                  return Icon(currentHour > 0 && currentHour < 12
                      ? Icons.wb_sunny_rounded
                      : currentHour >= 12 && currentHour < 17
                          ? Icons.wb_cloudy_rounded
                          : Icons.dark_mode_rounded);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
