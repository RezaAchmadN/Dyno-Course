import 'package:flutter/material.dart';
import 'package:gemastik/dashboard_page/view.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardView(),
    );
  }
}
