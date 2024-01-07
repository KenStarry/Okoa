import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';

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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            actions: [
              IconButton(
                  onPressed: () async {
                    _authController.signOut();
                  },
                  icon: Icon(Icons.logout_rounded))
            ],
          ),
          body: SafeArea(child: Text("Home Page"))),
    );
  }
}
