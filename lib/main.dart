import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:okoa/core/presentation/controller/core_controller.dart';
import 'package:okoa/di/controllers_di.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/presentation/auth_page.dart';
import 'package:okoa/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:okoa/features/feature_main/presentation/main_screen.dart';
import 'package:okoa/features/feature_settings/domain/model/sos_message.dart';
import 'package:okoa/features/feature_settings/presentation/controller/settings_controller.dart';
import 'package:okoa/theme/my_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  late final SettingsController _settingsController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
    _coreController = Get.find<CoreController>();
    _settingsController = Get.find<SettingsController>();

    // final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
    // final key = enc.Key.fromUtf8('my 32 length key................');
    // final iv = enc.IV.fromLength(16);
    //
    // final encrypter = enc.Encrypter(enc.AES(key));
    //
    // final encrypted = encrypter.encrypt(plainText, iv: iv);
    // final decrypted = encrypter.decrypt(encrypted, iv: iv);
    //
    // print('------------------DECRYPTED FROM MAIN ${decrypted}'); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
    // print('------------------ENCRYPTED FROM MAIN ${encrypted.base64}'); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
    // print(encrypted.base64);

    initializePrefs();
    initializeTimerIsolate();
  }

  void initializePrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    /// set default message
    _settingsController.setDefaultMessage(
        messageEnumValue: SosMessageEnum.values.firstWhere((messageValue) =>
            messageValue.name == prefs.getString('default_message')));
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
