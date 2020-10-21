import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/course_level2_page/description.dart';
import 'package:gemastik/course_level2_page/view2.dart';
import 'package:gemastik/course_page/mewarnai.dart';
import 'package:page_transition/page_transition.dart';

void main(List<String> args) {
  runApp(Level2());
}

class Level2 extends StatefulWidget {
  @override
  _Level2State createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  bool color = false;
  bool car = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            GestureDetector(
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                    car ? "assets/svgs/group1.svg" : "assets/svgs/group.svg",
                    width: 200,
                    height: 200),
              ),
              onTap: () {
                setState(() {
                  print(car);
                  color ? car = true : car = false;
                });
              },
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SvgPicture.asset("assets/svgs/group1.svg"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "Merah",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DescLevel2()),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset("assets/svgs/ellipse_185.svg"),
                      onTap: () {
                        setState(() {
                          print(color);
                          color = true;
                        });
                      },
                    ),
                    SizedBox(height: 16),
                    SvgPicture.asset("assets/svgs/ellipse_186.svg"),
                    SizedBox(height: 16),
                    SvgPicture.asset("assets/svgs/ellipse_187.svg"),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                  onPressed: car
                      ? () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: Level22(),
                            ),
                          );
                        }
                      : null,
                  color: Colors.red[400],
                  textColor: Colors.white,
                  child: Text("Selanjutnya".toUpperCase(),
                      style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
