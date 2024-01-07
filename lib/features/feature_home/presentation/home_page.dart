import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_home/presentation/components/sos_status_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final AuthController _authController;
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
    _coreController = Get.find<CoreController>();

    if (_authController.currentSession.value != null) {
      _coreController.listenToUserDataonDB(
          uid: _authController.getAuthUser()!.id,
          onGetUserData: (user) {
            _coreController.setOkoaUserData(okoaUser: user);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              Get.context!.isDarkMode ? Brightness.light : Brightness.dark),
      child: Scaffold(
        extendBodyBehindAppBar: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blue,
              ),
              CustomScrollView(
                slivers: [
                  SOSStatusSection()
                ],
              )
            ],
          )),
    );
  }
}
