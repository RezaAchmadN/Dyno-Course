import 'package:flutter/material.dart';
import 'package:gemastik/login_page/view.dart';
import 'package:gemastik/onboarding_page/view.dart';

abstract class OnboardingController extends State<OnBoardView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
      (Route<dynamic> route) => false,
    );
  }
}
