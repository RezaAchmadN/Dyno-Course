import 'package:flutter/material.dart';
import 'package:gemastik/therapy_page/view.dart';

class TherapyPage extends StatefulWidget {
  @override
  _TherapyPageState createState() => _TherapyPageState();
}

class _TherapyPageState extends State<TherapyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TherapyView(),
    );
  }
}
