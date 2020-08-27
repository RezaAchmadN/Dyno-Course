import 'package:flutter/material.dart';
import 'package:gemastik/consultation_page/view.dart';
import 'package:gemastik/dashboard_page.dart';

abstract class ConsultationController extends State<ConsultationView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }
}
