import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color background;

  SliderPage({this.title, this.description, this.image, this.background});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            image,
            width: width * 0.3,
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.w800,
                fontSize: 16,
                letterSpacing: 0.7,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
