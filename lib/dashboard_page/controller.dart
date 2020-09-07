import 'package:flutter/material.dart';
import 'package:gemastik/consultation_page.dart';
import 'package:gemastik/course_page/membaca.dart';
import 'package:gemastik/course_page/menghitung.dart';
import 'package:gemastik/course_page/mewarnai.dart';
import 'package:gemastik/dashboard_page/view.dart';
import 'package:gemastik/education_page.dart';
import 'package:gemastik/therapy_page.dart';
import 'package:page_transition/page_transition.dart';

abstract class DashboardController extends State<DashboardView> {
  navigateToEducationPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade, child: EducationPage()),
    );
  }

  navigateToConsultationPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade,
          child: ConsultationPage()),
    );
  }

  navigateToTherapyPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade, child: TherapyPage()),
    );
  }

  navigateToMewarnai() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade, child: MewarnaiPage()),
    );
  }

  navigateToMenghitung() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade,
          child: MenghitungPage()),
    );
  }

  navigateToMembaca() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade, child: MembacaPage()),
    );
  }
}
