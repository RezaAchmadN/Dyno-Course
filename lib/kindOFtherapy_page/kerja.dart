import 'package:flutter/material.dart';
import 'package:gemastik/kindOFtherapy_page/view.dart';

void main(List<String> args) {
  runApp(KerjaView());
}

class KerjaView extends StatefulWidget {
  @override
  _KerjaViewState createState() => _KerjaViewState();
}

class _KerjaViewState extends State<KerjaView> {
  List<Widget> _therapies = [
    BuildTherapy(
      title: "Lakukan Terapi Ini Agar Anak Bisa Cepat Bicara",
      description:
          "Hello Bunda, dalam video ini saya mencoba berbagi tips bermanfaat tentang bagaimana caranya membantu anak / balita agar segera bisa berbicara sesuai dengan usianya.",
      photo: "assets/images/therapy1.png",
    ),
    BuildTherapy(
      title: "Penyebab Anak Terlambat Bicara dan Cara Mengatasinya",
      description:
          "Anak terlambat bicara tak jarang menimbulkan kekhawatiran orang tuanya. Tiap orang tua pasti menantikan kata pertama yang terucap dari buah hati tercinta.",
      photo: "assets/images/therapy2.png",
    ),
    BuildTherapy(
      title: "Lakukan Terapi Ini Agar Anak Bisa Cepat Bicara",
      description:
          "Hello Bunda, dalam video ini saya mencoba berbagi tips bermanfaat tentang bagaimana caranya membantu anak / balita agar segera bisa berbicara sesuai dengan usianya.",
      photo: "assets/images/therapy1.png",
    ),
    BuildTherapy(
      title: "Penyebab Anak Terlambat Bicara dan Cara Mengatasinya",
      description:
          "Anak terlambat bicara tak jarang menimbulkan kekhawatiran orang tuanya. Tiap orang tua pasti menantikan kata pertama yang terucap dari buah hati tercinta.",
      photo: "assets/images/therapy2.png",
    ),
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
                children: List<Widget>.generate(_therapies.length, (int index) {
                  return _therapies[index];
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
