import 'package:flutter/material.dart';
import 'package:gemastik/daftar_page/view1.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/login_page/view.dart';
import 'package:page_transition/page_transition.dart';

abstract class LoginController extends State<LoginView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToDaftar() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade, child: DaftarView1()),
    );
  }
}
