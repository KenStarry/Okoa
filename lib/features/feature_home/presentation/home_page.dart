import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/features/feature_add_partner/presentation/add_partner_page.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_home/presentation/components/home_content_section.dart';
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
          statusBarIconBrightness: Get.context!.isDarkMode ? Brightness.dark : Brightness.light),
      child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //  add partner page
              Get.to(() => const AddPartnerPage());
            },
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(Icons.add_rounded),
          ),
          body: Stack(
            children: [
              //  Main background color
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Theme.of(context).primaryColorLight,
              ),

              //  SOS Extension
              Container(
                width: double.infinity,
                height: 550,
                margin: EdgeInsets.only(left: 100),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              const CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [SOSStatusSection(), HomeContentSection()],
              )
            ],
          )),
    );
  }
}
