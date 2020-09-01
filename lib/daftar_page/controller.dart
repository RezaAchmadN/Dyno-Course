import 'package:flutter/material.dart';
import 'package:gemastik/daftar_page/view1.dart';
import 'package:gemastik/daftar_page/view2.dart';
import 'package:gemastik/login_page/view.dart';

abstract class DaftarController1 extends State<DaftarView1> {
  navigateToDaftar2() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DaftarView2()),
    );
  }

  navigateToLoginPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
      (Route<dynamic> route) => false,
    );
  }
}

abstract class DaftarController2 extends State<DaftarView2> {
  navigateToLogin() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToDaftar1() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DaftarView1()),
      (Route<dynamic> route) => false,
    );
  }
}
