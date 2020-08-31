import 'package:flutter/material.dart';
import 'package:gemastik/kindOFtherapy_page/view.dart';

void main(List<String> args) {
  runApp(BerbicaraPage());
}

class BerbicaraPage extends StatefulWidget {
  @override
  _BerbicaraPageState createState() => _BerbicaraPageState();
}

class _BerbicaraPageState extends State<BerbicaraPage> {
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
                title: "Terapi Bicara",
                description:
                    "Terapi bahasa dapat membantu meningkatkan kemampuan berkomunikasi secara benar.",
                image: "assets/svgs/therapy_talk.svg",
                background: Colors.blue[300],
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
