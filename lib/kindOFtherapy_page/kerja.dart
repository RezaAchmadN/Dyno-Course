import 'package:flutter/material.dart';
import 'package:gemastik/kindOFtherapy_page/video.dart';
import 'package:gemastik/kindOFtherapy_page/view.dart';

void main(List<String> args) {
  runApp(KerjaView());
}

class KerjaView extends StatefulWidget {
  @override
  _KerjaViewState createState() => _KerjaViewState();
}

class _KerjaViewState extends State<KerjaView> {
  List<Widget> _therapies = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              BuildBanner(
                title: "Terapi Kerja",
                description:
                    "Terapi kerja dapat membantu meningkatkan kemampuan kerja secara benar.",
                image: "assets/svgs/therapy_work.svg",
                background: Colors.green[300],
                func: () {
                  // navigateToTherapyPage();
                  print("22222");
                },
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                    //   Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Video()),
                    // );
                    },
                    child: BuildTherapy(
                      title: "Latihan Meniup",
                      description:
                          "Mari latih anak anda untuk meniup untuk membiasakannya dalam menggunakan rahangnya",
                      photo: "assets/images/kerja.png",
                    ),
                  ),
                  BuildTherapy(
                    title: "Latihan Meniup",
                    description:
                        "Mari latih anak anda untuk meniup untuk membiasakannya dalam menggunakan rahangnya",
                    photo: "assets/images/kerja.png",
                  ),
                  BuildTherapy(
                    title: "Latihan Meniup",
                    description:
                        "Mari latih anak anda untuk meniup untuk membiasakannya dalam menggunakan rahangnya",
                    photo: "assets/images/kerja.png",
                  ),
                  BuildTherapy(
                    title: "Latihan Meniup",
                    description:
                        "Mari latih anak anda untuk meniup untuk membiasakannya dalam menggunakan rahangnya",
                    photo: "assets/images/kerja.png",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
