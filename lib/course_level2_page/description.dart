import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gemastik/course_level2_page/view.dart';
import 'package:gemastik/course_page/mewarnai.dart';

void main(List<String> args) {
  runApp(DescLevel2());
}

class DescLevel2 extends StatefulWidget {
  @override
  _DescLevel2State createState() => _DescLevel2State();
}

class _DescLevel2State extends State<DescLevel2> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 395,
                color: Colors.red,
                child: Stack(
                  children: [
                    Image.asset("assets/images/leveldesc.png"),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 40, 0, 0),
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MewarnaiPage()),
                            )
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[800],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "Level 2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "Mengenalkan Berbagai Warna Kepada Anak",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  "Akan diberikan sketsa gambar dari sebuah ojek yang harus diwarnai oleh si anak sesuai dengan contoh yang diberikan. ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  "Pendamping bisa menyebutkan secara berulang-ulang warna yang sesui dengan contoh warna yang yang diberikan serta pendamping menunjukkan warna yang sama di sekitar si anak.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Text(
                  "Dengan penjelasan berulang-ulang diharapkan hal ini akan terekam kuat di memori si Kecil sehingga ia akan mampu mengenal warna dengan baik. ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Level2()),
                    );
                  },
                  color: Colors.red[400],
                  textColor: Colors.white,
                  child: Container(
                    width: 400,
                    height: 50,
                    // width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text("Selanjutnya".toUpperCase(),
                          style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
