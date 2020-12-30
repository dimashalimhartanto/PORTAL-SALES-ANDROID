import 'package:PortalSales/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() => runApp(OnboardingIntiwid());

class OnboardingIntiwid extends StatelessWidget {
  static String id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
