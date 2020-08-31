import 'package:flutter/material.dart';
import 'package:gemastik/course_page/view.dart';

void main(List<String> args) {
  runApp(MenghitungPage());
}

class MenghitungPage extends StatefulWidget {
  @override
  _MenghitungPageState createState() => _MenghitungPageState();
}

class _MenghitungPageState extends State<MenghitungPage> {
  List<Widget> _levels = [
    BuildLevel(
        level: 1,
        description: "Menghitung dengan ceria",
        status: "checked",
        color: Colors.red[300]),
    BuildLevel(
        level: 2,
        description: "Menghitung dengan ceria",
        status: "onproses",
        color: Colors.red[300]),
    BuildLevel(
        level: 3,
        description: "Menghitung dengan ceria",
        status: "locked",
        color: Colors.red[300]),
    BuildLevel(
        level: 4,
        description: "Menghitung dengan ceria",
        status: "locked",
        color: Colors.red[300]),
    BuildLevel(
        level: 5,
        description: "Menghitung dengan ceria",
        status: "locked",
        color: Colors.red[300]),
    BuildLevel(
        level: 6,
        description: "Menghitung dengan ceria",
        status: "locked",
        color: Colors.red[300]),
    BuildLevel(
        level: 7,
        description: "Menghitung dengan ceria",
        status: "locked",
        color: Colors.red[300]),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              BuildBannerCourse(
                title: "Menghitung",
                description:
                    "Materi ini akan mengajarkan anakmu dalam menghitung",
                image: "assets/svgs/education_menghitung.svg",
                background: Colors.red[300],
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
