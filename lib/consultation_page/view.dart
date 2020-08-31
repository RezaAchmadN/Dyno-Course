import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/consultation_page/controller.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(ConsultationView());
}

class ConsultationView extends StatefulWidget {
  @override
  _ConsultationViewState createState() => _ConsultationViewState();
}

class _ConsultationViewState extends ConsultationController {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                _buildbanner(),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Rekomendasi Dokter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () => navigateToChatPage(
                    "Abiyyu Habibi",
                    "assets/images/consultation_doctor1.png",
                    Colors.blue[300],
                  ),
                  child: _buildDoctor(
                    "Abiyyu Habibi",
                    Colors.blue[300],
                    "assets/images/consultation_doctor1.png",
                    "Dokter Anak",
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => navigateToChatPage(
                    "Habibi Anze",
                    "assets/images/consultation_doctor2.png",
                    Colors.green[300],
                  ),
                  child: _buildDoctor(
                    "Habibi Anze",
                    Colors.green[300],
                    "assets/images/consultation_doctor2.png",
                    "Dokter Psikologi",
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => navigateToChatPage(
                    "Abiyyu Anjay",
                    "assets/images/consultation_doctor3.png",
                    Colors.deepPurple[800],
                  ),
                  child: _buildDoctor(
                    "Abiyyu Anjay",
                    Colors.deepPurple[800],
                    "assets/images/consultation_doctor3.png",
                    "Dokter Terapi",
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildbanner() {
    return Container(
      color: Colors.orange[300],
      width: double.infinity,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            navigateToDashboardPage();
                          });
                        }),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      "Selamat Pagi",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      "Aura Fathia",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      "Yuk temukan doktermu untuk mengkonsultasikan buah hatimu",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          SvgPicture.asset("assets/svgs/consultation_banner.svg"),
        ],
      ),
    );
  }

  Widget _buildDoctor(
      String namaDokter, Color warna, String gambar, String jenisDokter) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: warna,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(gambar),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    namaDokter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    jenisDokter.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Expanded(
              // height: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(4, 4, 2, 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.orange[200],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
