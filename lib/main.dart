import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding/onboarding_screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tắt banner debug
      title: 'Onboarding App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Chủ đề chính
      ),
      home: const OnboardingScreens(),
    );
  }
}
