import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  TextEditingController _c = new TextEditingController();
  List<Widget> _post = [
    _buildCardPost(
        description:
            "Pernah gak sih anak kalian tiba tiba sakit malam-malam padahal siangnya gk kenapa-kenapa dan gk bilang apa - apa, masih main bola dan main pesawat-pesawatan sama teman-teman dan ayahnya yang sekarang"),
    _buildCardPost(
        description:
            "Suami saya sangat sedih anak saya di diagnosa downsyndrome, ada yang sama seperti saya tidak ya? ada yang punya saran cara menghiburnya gk ya?"),
    _buildCardPost(
        description:
            "Anak saya namanya Nora dia kelebihan kromosom karena kita melahirkannya di umur yang sudah tua renta dan gawat jika melahirkan anak lagi, apakah ada yang kasusnya sama seperti saya?"),
    _buildCardPost(
        description:
            "Anak saya namanya Nora dia kelebihan kromosom karena kita melahirkannya di umur yang sudah tua renta dan gawat jika melahirkan anak lagi, apakah ada yang kasusnya sama seperti saya?"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Community"),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                      child: new Dialog(
                        child: Container(
                          height: MediaQuery.of(context).size.height - 570,
                          child: new Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: new TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  controller: _c,
                                ),
                              ),
                              new FlatButton(
                                child: new Text("Post"),
                                onPressed: () {
                                  setState(() {
                                    _post.add(
                                      _buildCardPost(description: _c.text),
                                    );
                                    _c.text = "";
                                  });
                                  Navigator.of(context, rootNavigator: true)
                                      .pop(context);
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      context: context);
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: List<Widget>.generate(_post.length, (int index) {
                  return Column(
                    children: [
                      SizedBox(height: 4),
                      _post[_post.length - index - 1],
                    ],
                  );
                }),
              )),
        ),
      ),
    );
  }
}

class _buildCardPost extends StatelessWidget {
  final String description;

  const _buildCardPost({Key key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 7,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        LikeButton(),
                        Text("44"),
                        SizedBox(width: 16),
                        Icon(Icons.comment),
                        SizedBox(width: 4),
                        Text("3"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 16),
              Icon(Icons.more_vert),
            ],
          ),
        ),
      ),
    );
  }
}
