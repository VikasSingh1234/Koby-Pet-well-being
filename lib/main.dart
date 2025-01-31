import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/features/login/view/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreenView(),
    );
  }
}

