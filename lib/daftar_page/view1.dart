import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/daftar_page/controller.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

void main(List<String> args) {
  runApp(DaftarView1());
}

class DaftarView1 extends StatefulWidget {
  @override
  _DaftarView1State createState() => _DaftarView1State();
}

class _DaftarView1State extends DaftarController1 {
  TextEditingController namaController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () => {navigateToLoginPage()},
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
                      Text("Step 1 dari 2"),
                      SizedBox(height: 16),
                      Text(
                        "Data Diri Ibunda",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      SizedBox(height: 32),
                      Column(
                        children: [
                          _buildTF("Nama Lengkap", namaController),
                          SizedBox(height: 16),
                          _buildTF("Email", emailController),
                          SizedBox(height: 16),
                          _buildPasswordTF(),
                          SizedBox(height: 16),
                          _buildDateTF("tanggal lahir", emailController),
                          SizedBox(height: 16),
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
      ),
    );
  }

  bool _obscureText = true;
  Widget _buildPasswordTF() {
    return Container(
      // padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Password",
            style: new TextStyle(
              fontSize: 16.0,
            ),
          ),
          Container(
            height: 45.0,
            child: TextField(
              controller: passwordController,
              obscureText: _obscureText,
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
          navigateToDaftar2(emailController.text, passwordController.text);
        },
        color: Colors.red[400],
        textColor: Colors.white,
        child:
            Text("Selanjutnya".toUpperCase(), style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
