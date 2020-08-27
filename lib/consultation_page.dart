import 'package:flutter/material.dart';
import 'package:gemastik/consultation_page/view.dart';

class ConsultationPage extends StatefulWidget {
  @override
  _ConsultationPageState createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConsultationView(),
    );
  }
}
