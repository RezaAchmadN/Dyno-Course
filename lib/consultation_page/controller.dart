import 'package:flutter/material.dart';
import 'package:gemastik/consultation_page/view.dart';
import 'package:gemastik/dashboard_page.dart';
import 'package:gemastik/fake_chat.dart';

abstract class ConsultationController extends State<ConsultationView> {
  navigateToDashboardPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
      (Route<dynamic> route) => false,
    );
  }

  navigateToChatPage(String name, String picture, Color background) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatApp(
            name: name,
            picture: picture,
            background: background,
          ),
        ));
  }
}
