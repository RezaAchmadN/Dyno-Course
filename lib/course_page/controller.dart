import 'package:flutter/material.dart';
import 'package:gemastik/education_page.dart';
import 'package:gemastik/kindOFtherapy_page/view.dart';

abstract class CourseController extends State<BuildBanner> {
  navigateToEducationPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => EducationPage()),
      (Route<dynamic> route) => false,
    );
  }
}
