import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gemastik/course_level2_page/view.dart';
import 'package:gemastik/course_page/view.dart';
import 'package:page_transition/page_transition.dart';

void main(List<String> args) {
  runApp(MewarnaiPage());
}

class MewarnaiPage extends StatefulWidget {
  @override
  _MewarnaiPageState createState() => _MewarnaiPageState();
}

class _MewarnaiPageState extends State<MewarnaiPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              BuildBannerCourse(
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
                children: [
                  BuildLevel(
                      level: 1,
                      description: "Mengenalkan Berbagai Warna",
                      status: "checked",
                      color: Colors.deepPurple[800]),
                  GestureDetector(
                    child: BuildLevel(
                        level: 2,
                        description: "Mengenalkan Berbagai Warna",
                        status: "onproses",
                        color: Colors.deepPurple[800]),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Level2()),
                      );
                      print("object");
                    },
                  ),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
