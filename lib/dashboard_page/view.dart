import 'package:flutter/material.dart';
import 'package:gemastik/dashboard_page/controller.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(DashboardView());

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends DashboardController {
  int _current = 0;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildBanner(),
              _buildFitur(),
              _buildArtikel(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => _index = newIndex),
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Beranda")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Profil")),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 280,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Image.asset("assets/images/dashboardBanner.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0),
            child: Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Selamat Pagi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Aura Fathia",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      CarouselSlider(
                        options: CarouselOptions(
                            height: 125.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                        items: [1, 2, 3].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                child: _card(),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [1, 2, 3].map((i) {
                          int index = [1, 2, 3].indexOf(i);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Colors.red[300]
                                  : Color.fromRGBO(0, 0, 0, 0.2),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _card() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        width: double.infinity,
        height: 100,
        child: Column(
          children: <Widget>[
            Text(
              "⋆ Progress Belajar Anakmu ⋆",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.red[300],
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 4),
            Text(
              "Mewarnai",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.red[300],
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            Container(
              height: 30,
              width: 250,
              child: StepProgressIndicator(
                totalSteps: 5,
                currentStep: 2,
                size: 36,
                selectedColor: Colors.green[300],
                unselectedColor: Colors.grey[200],
                customStep: (index, color, _) => Column(
                  children: <Widget>[
                    index == 0
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              color: index == 2 - 1 ? Colors.red[300] : color,
                            ),
                            height: 12,
                          )
                        : index == 5 - 1
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                  color:
                                      index == 2 - 1 ? Colors.red[300] : color,
                                ),
                                height: 12,
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  color:
                                      index == 2 - 1 ? Colors.red[300] : color,
                                ),
                                height: 12,
                              ),
                    SizedBox(height: 4),
                    Center(
                      child: Text(
                        "Level " + (index + 1).toString(),
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFitur() {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Fitur",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          _fitur("assets/images/education.png", "Edukasi",
              "Yuk belajar bersama anak kesayangan anda"),
          _fitur("assets/images/consultation.png", "konsultasi",
              "Tanyakan tentang anakmu pada yang berpengalaman"),
          _fitur("assets/images/therapy.png", "Terapi",
              "Yuk terapi anakmu dengan cara yang tepat"),
        ],
      ),
    );
  }

  Widget _fitur(String img, String title, String desc) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Image.asset(img.toString()),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      desc.toString(),
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.grey[500],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArtikel() {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Artikel",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/imgArtikel.png"),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Ini 6 Cara yang Baik untuk Mendidik Anak Down Syndrome",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Oleh ",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "EDUFINE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red[300]),
                          ),
                          Expanded(child: Container()),
                          Container(
                            height: 35,
                            child: RaisedButton(
                              color: Colors.red[300],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Lihat",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
