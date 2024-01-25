import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/core/utils/extensions/string_extensions.dart';
import 'package:okoa/di/controllers_di.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/presentation/auth_page.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_main/presentation/main_screen.dart';
import 'package:okoa/theme/my_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get/get.dart';

import 'core/data/api/api.dart';
import 'core/data/isolates/timer_isolates.dart';

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

    initializeTimerIsolate();
  }

  void initializeTimerIsolate() async {
    final receivePort = ReceivePort();
    await Isolate.spawn(trackCurrentTimeIsolate, receivePort.sendPort);

    receivePort.listen((message) {
      final currentDate = message as DateTime;

      _coreController.updateCurrentDateTime(date: currentDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        home: _authController.currentSession.value != null
            ? const MainScreen()
            : const AuthPage(),
        debugShowCheckedModeBanner: false,
        theme: MyTheme(accent: _coreController.sosColor.value).lightTheme,
        darkTheme: MyTheme(accent: _coreController.sosColor.value).darkTheme,
      ),
    );
  }
}
