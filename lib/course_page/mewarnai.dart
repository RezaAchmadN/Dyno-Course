import 'package:flutter/material.dart';
import 'package:gemastik/course_page/view.dart';

void main(List<String> args) {
  runApp(MewarnaiPage());
}

class MewarnaiPage extends StatefulWidget {
  @override
  _MewarnaiPageState createState() => _MewarnaiPageState();
}

class _MewarnaiPageState extends State<MewarnaiPage> {
  List<Widget> _levels = [
    BuildLevel(
        level: 1,
        description: "Mengenalkan Berbagai Warna",
        status: "checked",
        color: Colors.deepPurple[800]),
    BuildLevel(
        level: 2,
        description: "Mengenalkan Berbagai Warna",
        status: "onproses",
        color: Colors.deepPurple[800]),
    BuildLevel(
        level: 3,
        description: "Mengenalkan Berbagai Warna",
        status: "locked",
        color: Colors.deepPurple[800]),
    BuildLevel(
        level: 4,
        description: "Mengenalkan Berbagai Warna",
        status: "locked",
        color: Colors.deepPurple[800]),
    BuildLevel(
        level: 5,
        description: "Mengenalkan Berbagai Warna",
        status: "locked",
        color: Colors.deepPurple[800]),
    BuildLevel(
        level: 6,
        description: "Mengenalkan Berbagai Warna",
        status: "locked",
        color: Colors.deepPurple[800]),
    BuildLevel(
        level: 7,
        description: "Mengenalkan Berbagai Warna",
        status: "locked",
        color: Colors.deepPurple[800]),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              BuildBanner(
                title: "Mewarnai",
                description:
                    "Materi ini akan mengajarkan anakmu dalam mewarnai, materi ini terdiri dari 7 level",
                image: "assets/svgs/education_mewarnai.svg",
                background: Colors.deepPurple[800],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: List<Widget>.generate(_levels.length, (int index) {
                  return _levels[index];
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
