import 'package:flutter/material.dart';
import 'package:gemastik/course_page/membaca.dart';
import 'package:gemastik/course_page/menghitung.dart';
import 'package:gemastik/course_page/mewarnai.dart';
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

  navigateToMewarnai() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MewarnaiPage()),
    );
  }

  navigateToMenghitung() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MenghitungPage()),
    );
  }

  navigateToMembaca() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MembacaPage()),
    );
  }
}
