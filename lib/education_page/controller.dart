import 'package:flutter/material.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/education_page/view.dart';

abstract class EducationController extends State<EducationView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }
}
