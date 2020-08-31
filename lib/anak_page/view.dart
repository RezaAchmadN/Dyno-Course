import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/anak_page/controller.dart';

void main(List<String> args) {
  runApp(AnakView());
}

class AnakView extends StatefulWidget {
  @override
  _AnakViewState createState() => _AnakViewState();
}

class _AnakViewState extends AnakController {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              GestureDetector(
                onTap: () => navigateToProfilePage(),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: Colors.pink[100]),
                  ),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(height: 32),
              Text(
                "Pilih Akun Anak",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16),
              _buildMateri("Reza Achmad Naufal", "assets/svgs/anak.svg"),
              _buildMateri("Naufal Reza Achmad", "assets/svgs/anak.svg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMateri(String nama, String gambar) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              gambar,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    nama,
                    style: TextStyle(
                        color: Colors.red[300],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}
