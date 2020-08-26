import 'package:flutter/material.dart';
import 'package:gemastik/education_page/view.dart';

class EducationPage extends StatefulWidget {
  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EducationView(),
    );
  }
}
