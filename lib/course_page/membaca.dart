import 'package:flutter/material.dart';
import 'package:gemastik/course_page/view.dart';

void main(List<String> args) {
  runApp(MembacaPage());
}

class MembacaPage extends StatefulWidget {
  @override
  _MembacaPageState createState() => _MembacaPageState();
}

class _MembacaPageState extends State<MembacaPage> {
  List<Widget> _levels = [
    BuildLevel(
        level: 1,
        description: "Membaca dengan ceria",
        status: "checked",
        color: Colors.blue[300]),
    BuildLevel(
        level: 2,
        description: "Membaca dengan ceria",
        status: "onproses",
        color: Colors.blue[300]),
    BuildLevel(
        level: 3,
        description: "Membaca dengan ceria",
        status: "locked",
        color: Colors.blue[300]),
    BuildLevel(
        level: 4,
        description: "Membaca dengan ceria",
        status: "locked",
        color: Colors.blue[300]),
    BuildLevel(
        level: 5,
        description: "Membaca dengan ceria",
        status: "locked",
        color: Colors.blue[300]),
    BuildLevel(
        level: 6,
        description: "Membaca dengan ceria",
        status: "locked",
        color: Colors.blue[300]),
    BuildLevel(
        level: 7,
        description: "Membaca dengan ceria",
        status: "locked",
        color: Colors.blue[300]),
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
                title: "Membaca",
                description: "Materi ini akan mengajarkan anakmu dalam membaca",
                image: "assets/svgs/education_membaca.svg",
                background: Colors.blue[300],
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
