import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gemastik/daftar_page/view1.dart';
import 'package:gemastik/daftar_page/view2.dart';
import 'package:gemastik/login_page/view.dart';

abstract class DaftarController1 extends State<DaftarView1> {
  navigateToDaftar2(String _email, String _password) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DaftarView2()),
      );
    } on Exception catch (e) {
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

  navigateToLoginPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
      (Route<dynamic> route) => false,
    );
    print("object");
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
