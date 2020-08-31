import 'package:flutter/material.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/kindOFtherapy_page/berbicara.dart';
import 'package:gemastik/kindOFtherapy_page/fisik.dart';
import 'package:gemastik/kindOFtherapy_page/kerja.dart';
import 'package:gemastik/therapy_kerja_page.dart';
import 'package:gemastik/therapy_page/view.dart';

abstract class TherapyController extends State<TherapyView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToFisik() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FisikPage()),
    );
  }

  navigateToBerbicara() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BerbicaraPage()),
    );
  }

  navigateToKerja() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TherapyKerjaPage()),
    );
  }
}
