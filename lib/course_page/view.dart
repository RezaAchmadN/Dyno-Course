import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/course_page/controller.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildBannerCourse extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final Color background;

  const BuildBannerCourse(
      {Key key, this.title, this.description, this.image, this.background})
      : super(key: key);

  @override
  _BuildBannerCourseState createState() => _BuildBannerCourseState();
}

class _BuildBannerCourseState extends CourseController {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.background,
      width: double.infinity,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      // onPressed: () {},
                      onPressed: () => navigateToEducationPage(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      widget.title,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      widget.description,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          SvgPicture.asset(widget.image),
        ],
      ),
    );
  }
}

class BuildLevel extends StatefulWidget {
  final int level;
  final String description;
  final String status;
  final Color color;

  const BuildLevel(
      {Key key, this.level, this.description, this.status, this.color})
      : super(key: key);

  @override
  _BuildLevelState createState() => _BuildLevelState();
}

class _BuildLevelState extends State<BuildLevel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Card(
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              widget.status == "checked"
                  ? SvgPicture.asset("assets/svgs/checked.svg",
                      color: widget.color)
                  : widget.status == "onproses"
                      ? SvgPicture.asset("assets/svgs/onproses.svg",
                          color: widget.color)
                      : SvgPicture.asset("assets/svgs/locked.svg",
                          color: Colors.black38),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Level " + widget.level.toString(),
                      style: TextStyle(
                          color: widget.color, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
