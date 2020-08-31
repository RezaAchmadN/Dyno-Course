import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/profile_page/controller.dart';

void main(List<String> args) {
  runApp(ProfileView());
}

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends ProfileController {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset("assets/svgs/profile_banner.svg"),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildProfile(),
                    SizedBox(height: 16),
                    _buildLogout(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogout() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Row(
            children: [
              SvgPicture.asset("assets/svgs/log_out1.svg"),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)),
                        child:
                            Image.asset("assets/images/profile_picture.png")),
                    SizedBox(height: 16),
                    Text(
                      "Tika Aulia Tami",
                      style: TextStyle(
                          color: Colors.red[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Reza achmad Naufal",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black12),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () => navigateToAnak(),
                          child: Container(
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/svgs/settings.svg"),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    "Anak",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black38,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Container(
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svgs/settings.svg"),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  "Pengaturan",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Container(
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svgs/help_circle.svg"),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  "Bantuan",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Container(
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svgs/help_circle2.svg"),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  "Syarat & ketentuan",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
