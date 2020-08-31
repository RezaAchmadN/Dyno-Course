import 'package:flutter/material.dart';
import 'package:gemastik/kindOFtherapy_page/kerja.dart';

class TherapyKerjaPage extends StatefulWidget {
  @override
  _TherapyKerjaPageState createState() => _TherapyKerjaPageState();
}

class _TherapyKerjaPageState extends State<TherapyKerjaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KerjaView(),
    );
  }
}
