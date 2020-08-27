import 'package:flutter/material.dart';
import 'package:gemastik/consultation_page.dart';
import 'package:gemastik/dashboard_page/view.dart';
import 'package:gemastik/education_page.dart';
import 'package:gemastik/therapy_page.dart';

abstract class DashboardController extends State<DashboardView> {
  navigateToEducationPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EducationPage(),
        ));
  }

  navigateToConsultationPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConsultationPage(),
        ));
  }

  navigateToTherapyPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TherapyPage(),
        ));
  }
}
