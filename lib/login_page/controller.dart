import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gemastik/daftar_page/view1.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/login_page/view.dart';
import 'package:page_transition/page_transition.dart';

abstract class LoginController extends State<LoginView> {
  Future<void> navigateToDashboardPage(String _email, String _password) async {
    try {
      dynamic user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
        (Route<dynamic> route) => false,
      );
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Could not sign with those credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  navigateToDaftar() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade, child: DaftarView1()),
    );
  }
}
