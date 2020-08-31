import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik/kindOFtherapy_page/controller.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildBanner extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final Color background;
  final Function func;

  const BuildBanner(
      {Key key,
      this.title,
      this.description,
      this.image,
      this.background,
      this.func})
      : super(key: key);

  @override
  _BuildBannerState createState() => _BuildBannerState();
}

class _BuildBannerState extends KindOfTherapyController {
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
                        onPressed: () => navigateToTherapyPage()),
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
                            fontSize: 12),
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

class BuildTherapy extends StatefulWidget {
  final String title;
  final String description;
  final String photo;

  const BuildTherapy({Key key, this.title, this.description, this.photo})
      : super(key: key);

  @override
  _BuildTherapyState createState() => _BuildTherapyState();
}

class _BuildTherapyState extends State<BuildTherapy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Container(
          child: Card(
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.photo,
                    height: 150,
                    width: 125,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 16, 16, 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Text(
                            widget.description,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
