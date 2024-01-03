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
      url: "https://fsjkcmvvtuccbvbpauon.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZzamtjbXZ2dHVjY2J2YnBhdW9uIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQwNjAzNTIsImV4cCI6MjAxOTYzNjM1Mn0.aGIQy25qbj2Bf6OzrGuEuJObB90vnI_GietrQogBv5Q");

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
