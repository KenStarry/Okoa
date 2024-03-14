import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/presentation/controller/core_controller.dart';
import '../../feature_auth/presentation/controller/auth_controller.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              //  avatar
              SliverToBoxAdapter(
                child: Obx(
                  () => UnconstrainedBox(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
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
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )
                          : const Icon(Icons.person_rounded),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
