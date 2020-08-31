import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemastik/kindOFtherapy_page/kerja.dart';
import 'package:gemastik/kindOFtherapy_page/view.dart';
import 'package:gemastik/therapy_page.dart';

abstract class KindOfTherapyController extends State<BuildBanner> {
  navigateToTherapyPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => TherapyPage()),
      (Route<dynamic> route) => false,
    );
  }
}
