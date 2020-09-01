import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/daftar_page/controller.dart';
import 'package:gender_selection/gender_selection.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(DaftarView2());
}

class DaftarView2 extends StatefulWidget {
  @override
  _DaftarView2State createState() => _DaftarView2State();
}

class _DaftarView2State extends DaftarController2 {
  TextEditingController emailController = new TextEditingController();

  String selectedGender;

  @override
  Widget build(BuildContext context) {
    const balbirGradient = LinearGradient(
        colors: [const Color(0xFFFF5F6d), const Color(0xFFFFC371)],
        tileMode: TileMode.clamp,
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0.0, 1.0]);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    GestureDetector(
                      onTap: () => {navigateToDaftar1()},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(color: Colors.pink[100]),
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text("Step 2 dari 2"),
                    SizedBox(height: 16),
                    Text(
                      "Data Diri Anak",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    SizedBox(height: 32),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTF("Nama Lengkap", emailController),
                        SizedBox(height: 16),
                        _buildDateTF("Tanggal Lahir", emailController),
                        SizedBox(height: 16),
                        Text(
                          "Jenis Kelamin Anak",
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.red[100], width: 3.0),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          child: GenderSelection(
                            maleText: "Pria", //default Male
                            femaleText: "Wanita", //default Female
                            linearGradient: balbirGradient,
                            selectedGenderIconBackgroundColor:
                                Colors.indigo, // default red
                            checkIconAlignment:
                                Alignment.centerRight, // default bottomRight
                            selectedGenderCheckIcon:
                                null, // default Icons.check
                            onChanged: (Gender gender) {
                              print(gender);
                            },
                            equallyAligned: true,
                            animationDuration: Duration(milliseconds: 400),
                            isCircular: true, // default : true,
                            isSelectedGenderIconCircular: true,
                            opacityOfGradient: 0.6,
                            padding: const EdgeInsets.all(3),
                            size: 120, //default : 120
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildButtonSignUp())
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTF(String title, TextEditingController controllers) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: new TextStyle(
              fontSize: 16.0,
            ),
          ),
          Container(
            height: 45.0,
            child: TextField(
              controller: controllers,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[100], width: 3.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[100], width: 3.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDateTF(String title, TextEditingController controllers) {
    // final format = DateFormat("EEEE, d-MMMM-yyyy");
    final format = DateFormat("EEEE, dd-MM-yyyy");
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: new TextStyle(
              fontSize: 16.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red[100], width: 3.0),
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
            height: 45.0,
            child: Row(
              children: [
                SizedBox(width: 8),
                SvgPicture.asset("assets/svgs/date_logo.svg"),
                SizedBox(width: 8),
                Expanded(
                  child: DateTimeField(
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonSignUp() {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        onPressed: () {
          navigateToLogin();
        },
        color: Colors.red[400],
        textColor: Colors.white,
        child: Text("Selesai".toUpperCase(), style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
