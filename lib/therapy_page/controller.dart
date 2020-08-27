import 'package:flutter/material.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/therapy_page/view.dart';

abstract class TherapyController extends State<TherapyView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }
}
