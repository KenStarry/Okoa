import 'package:flutter/material.dart';
import 'package:okoa/core/data/api/api.dart';
import 'package:okoa/di/controllers_di.dart';
import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_auth/presentation/auth_page.dart';
import 'package:okoa/theme/my_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get/get.dart';

void main() async {
  //  Supabase
  await Supabase.initialize(
      url: Api.url,
      anonKey: Api.anonKey,
      authOptions:
          const FlutterAuthClientOptions(authFlowType: AuthFlowType.pkce));

  //  Dependencies
  invokeDI();
  initializeControllers();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.lightTheme,
    );
  }
}
