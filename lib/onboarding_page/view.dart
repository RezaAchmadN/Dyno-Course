import 'package:flutter/material.dart';
import 'package:gemastik/onboarding_page/controller.dart';
import 'package:gemastik/onboarding_page/slider.dart';

class OnBoardView extends StatefulWidget {
  @override
  _OnBoardViewState createState() => _OnBoardViewState();
}

class _OnBoardViewState extends OnboardingController {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Edukasi",
        description:
            "berisi mata pelajaran yang dikhususkan untuk meningkatkan kefokusan terhadap anak Down Syndrome.",
        image: "assets/svgs/education.svg",
        background: Colors.green[300]),
    SliderPage(
        title: "Konsultasi",
        description:
            "menyediakan kesempatan dan kemudahan bagi para orang tua anak down syndrome untuk berkonsultasi dengan dokter psikologi",
        image: "assets/svgs/consultation.svg",
        background: Colors.orange[300]),
    SliderPage(
        title: "Terapi",
        description:
            "berisi tentang perlakuan langkah terapi yang dibutuhkan bagi anak down syndrome",
        image: "assets/svgs/therapy.svg",
        background: Colors.blue[300]),
    SliderPage(
        title: "Komunitas",
        description:
            "menghubungkan pengguna Edufine yang satu dengan lainnya, fitur ini juga dapat dijadikan sebagai platform sharing bagi para orang tua dengan anak down syndrome ",
        image: "assets/svgs/community.svg",
        background: Colors.red[300]),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.red
                                : Colors.red.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  (_currentPage == (_pages.length - 1))
                      ? navigateToDashboardPage()
                      : _controller.nextPage(
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 70,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          "Yuk Mulai",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 30,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
