import 'package:flutter/material.dart';
import 'package:gemastik/course_page/view.dart';
import 'package:gemastik/education_page.dart';

abstract class CourseController extends State<BuildBannerCourse> {
  navigateToEducationPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => EducationPage()),
      (Route<dynamic> route) => false,
    );
  }
}
