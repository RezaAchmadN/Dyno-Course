import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/therapy_page/controller.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(TherapyView());
}

class TherapyView extends StatefulWidget {
  @override
  _TherapyViewState createState() => _TherapyViewState();
}

class _TherapyViewState extends TherapyController {
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
                    "Materi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  child: _buildMateri(
                    "Fisik",
                    Colors.red[300],
                    "assets/svgs/therapy_physic.svg",
                  ),
                  onTap: () => navigateToFisik(),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  child: _buildMateri(
                    "Berbicara",
                    Colors.blue[300],
                    "assets/svgs/therapy_talk.svg",
                  ),
                  onTap: () => navigateToBerbicara(),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  child: _buildMateri(
                    "Kerja",
                    Colors.green[300],
                    "assets/svgs/therapy_work.svg",
                  ),
                  onTap: () => navigateToKerja(),
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
      color: Colors.red[400],
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
                            fontSize: 16),
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
                      "Yuk terapi buah hatimu dengan tutorial video yang kami berikan",
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
          SvgPicture.asset("assets/svgs/therapy_banner.svg"),
        ],
      ),
    );
  }

  Widget _buildMateri(String judul, Color warna, String gambar) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: warna,
        ),
        child: Row(
          children: [
            SvgPicture.asset(gambar),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terapi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    judul.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Terdapat 7 video",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Text(
                      "Mulai",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
