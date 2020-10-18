import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/course_page/mewarnai.dart';

void main(List<String> args) {
  runApp(Level22());
}

class Level22 extends StatefulWidget {
  @override
  _Level22State createState() => _Level22State();
}

class _Level22State extends State<Level22> {
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
                    car ? "assets/svgs/group3.svg" : "assets/svgs/group2.svg",
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
                child: SvgPicture.asset("assets/svgs/group3.svg"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "Hijau",
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
                    MaterialPageRoute(builder: (context) => MewarnaiPage()),
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
                    SvgPicture.asset("assets/svgs/ellipse_185.svg"),
                    SizedBox(height: 16),
                    GestureDetector(
                      child: SvgPicture.asset("assets/svgs/ellipse_186.svg"),
                      onTap: () {
                        setState(() {
                          print(color);
                          color = true;
                        });
                      },
                    ),
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
                            MaterialPageRoute(
                                builder: (context) => MewarnaiPage()),
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
