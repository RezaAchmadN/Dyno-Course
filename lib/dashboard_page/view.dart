import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/community_page/view.dart';
import 'package:gemastik/dashboard_page/controller.dart';
import 'package:gemastik/profile_page/view.dart';
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
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: Scaffold(
        body: _index == 0
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _buildBanner(),
                    _buildFitur(),
                    _buildArtikel(),
                  ],
                ),
              )
            : _index == 1 ? CommunityPage() : ProfileView(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() {
            _index = newIndex;
            print(_index.toString());
          }),
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Beranda")),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text("Community")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Profil")),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    List<Widget> _listCard = [
      GestureDetector(
          onTap: () => navigateToMewarnai(), child: _card("Mewarnai", 2)),
      GestureDetector(
          onTap: () => navigateToMenghitung(), child: _card("Menghitung", 4)),
      GestureDetector(
          onTap: () => navigateToMembaca(), child: _card("Membaca", 3)),
    ];

    return Container(
      height: 280,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: SvgPicture.asset("assets/svgs/dashboardBanner.svg"),
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
                                child: _listCard[i - 1],
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

  Widget _card(String materi, int level) {
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
              materi,
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
                currentStep: level,
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
                              color:
                                  index == level - 1 ? Colors.red[300] : color,
                            ),
                            height: 12,
                          )
                        : index == 5 - 1
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                  color: index == level - 1
                                      ? Colors.red[300]
                                      : color,
                                ),
                                height: 12,
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  color: index == level - 1
                                      ? Colors.red[300]
                                      : color,
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
          GestureDetector(
            onTap: () => navigateToEducationPage(),
            child: _fitur("assets/svgs/education.svg", Colors.green[300],
                "Edukasi", "Yuk belajar bersama anak kesayangan anda"),
          ),
          GestureDetector(
            onTap: () => navigateToConsultationPage(),
            child: _fitur(
                "assets/svgs/consultation.svg",
                Colors.orange[300],
                "konsultasi",
                "Tanyakan tentang anakmu pada yang berpengalaman"),
          ),
          GestureDetector(
            onTap: () => navigateToTherapyPage(),
            child: _fitur("assets/svgs/therapy.svg", Colors.red[300], "Terapi",
                "Yuk terapi anakmu dengan cara yang tepat"),
          ),
        ],
      ),
    );
  }

  Widget _fitur(String img, Color color, String title, String desc) {
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
              Container(
                height: 66,
                width: 66,
                child: Center(
                  child: SvgPicture.asset(
                    img,
                    height: 33,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: color),
              ),
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
