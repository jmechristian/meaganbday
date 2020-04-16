import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meagan_bday/screens/onboarding_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meagan Birthday',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
