import 'package:flutter/material.dart';
import 'package:gemastik/kindOFtherapy_page/view.dart';

void main(List<String> args) {
  runApp(FisikPage());
}

class FisikPage extends StatefulWidget {
  @override
  _FisikPageState createState() => _FisikPageState();
}

class _FisikPageState extends State<FisikPage> {
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
                title: "Terapi Fisik",
                description:
                    "Terapi fisik dapat membantu meningkatkan kemampuan fisik secara benar.",
                image: "assets/svgs/therapy_physic.svg",
                background: Colors.red[300],
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
