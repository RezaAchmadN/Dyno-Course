import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/login_page/controller.dart';

void main(List<String> args) {
  runApp(LoginView());
}

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends LoginController {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svgs/logo.svg",
                  height: 100,
                ),
                SizedBox(height: 32),
                _buildTF("Email", emailController),
                SizedBox(height: 16),
                _buildPasswordTF(),
                SizedBox(height: 16),
                _buildButtonSignIn(),
                SizedBox(height: 16),
                _buildStringLupaPassword(),
                SizedBox(height: 64),
                Text("Masuk Menggunakan Akun Lainnya"),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(child: _buildButtonFacebook()),
                    Expanded(child: _buildButtonTwitter()),
                  ],
                ),
                SizedBox(height: 16),
                _buildStringDaftar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTF(String title, TextEditingController controllers) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
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
                  borderSide: BorderSide(color: Colors.black38, width: 3.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38, width: 3.0),
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

  bool _obscureText = true;
  Widget _buildPasswordTF() {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
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
                  borderSide: BorderSide(color: Colors.black38, width: 3.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38, width: 3.0),
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

  Widget _buildButtonSignIn() {
    return Container(
      width: double.infinity,
      height: 50.0,
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        onPressed: () {
          navigateToDashboardPage(
              emailController.text, passwordController.text);
          setState(() {
            // isLoadingTrue();
          });
          // signIn(emailController.text, passwordController.text);
        },
        color: Colors.red[400],
        textColor: Colors.white,
        child: Text("Masuk".toUpperCase(), style: TextStyle(fontSize: 18)),
      ),
    );
  }

  Widget _buildStringLupaPassword() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Lupa Password? ",
            style: new TextStyle(
              fontSize: 14.0,
            ),
          ),
          InkWell(
              child: Text(
                "Klik Disini",
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.red[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RegisterPage(),
                // ),
                // );
              }),
        ],
      ),
    );
  }

  Widget _buildButtonFacebook() {
    return Container(
      width: double.infinity,
      height: 50.0,
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        onPressed: () {
          setState(() {
            // isLoadingTrue();
          });
          // signIn(emailController.text, passwordController.text);
        },
        color: Colors.blue[900],
        textColor: Colors.white,
        child: Row(
          children: [
            SvgPicture.asset("assets/svgs/fb_logo.svg"),
            SizedBox(width: 16),
            Text("Facebook", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonTwitter() {
    return Container(
      width: double.infinity,
      height: 50.0,
      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        onPressed: () {
          setState(() {
            // isLoadingTrue();
          });
          // signIn(emailController.text, passwordController.text);
        },
        color: Colors.blue[400],
        textColor: Colors.white,
        child: Row(
          children: [
            SvgPicture.asset("assets/svgs/twitter_logo.svg"),
            SizedBox(width: 16),
            Text("Twitter", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }

  Widget _buildStringDaftar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Tidak Memiliki Akun? ",
            style: new TextStyle(
              fontSize: 14.0,
            ),
          ),
          InkWell(
              child: Text(
                "Daftar",
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.red[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                navigateToDaftar();
              }),
        ],
      ),
    );
  }
}
