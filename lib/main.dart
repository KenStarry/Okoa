import 'dart:async';

import 'package:flutter/material.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/di/controllers_di.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/presentation/auth_page.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_home/presentation/home_page.dart';
import 'package:okoa/features/feature_main/presentation/main_screen.dart';
import 'package:okoa/theme/colors.dart';
import 'package:okoa/theme/my_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get/get.dart';

import 'core/data/api/api.dart';

void main() async {
  //  Supabase
  await Supabase.initialize(url: Api.url, anonKey: Api.anonKey);

  //  Dependencies
  invokeDI();
  initializeControllers();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AuthController _authController;
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        home: _authController.currentSession.value != null
            ? const MainScreen()
            : const AuthPage(),
        debugShowCheckedModeBanner: false,
        theme: MyTheme(
                accent: _coreController.okoaUser.value != null &&
                        _coreController.okoaUser.value!.sentRequests.isNotEmpty
                    ? sosOrange
                    : accent)
            .lightTheme,
        darkTheme: MyTheme(
                accent: _coreController.okoaUser.value != null &&
                        _coreController.okoaUser.value!.sentRequests.isNotEmpty
                    ? sosOrange
                    : accent)
            .darkTheme,
      ),
    );
  }
}
