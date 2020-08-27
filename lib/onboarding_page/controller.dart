import 'package:flutter/material.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/onboarding_page/view.dart';

abstract class OnboardingController extends State<OnBoardView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }
}
