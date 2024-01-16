import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/pages/onboarding_pages/page1.dart';
import 'package:bank_sha/view/pages/onboarding_pages/page2.dart';
import 'package:bank_sha/view/pages/onboarding_pages/page3.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 1;
  CarouselController carouselController = CarouselController();
  final _controller = PageController();

  // List<String> titles = [
  //   'Grow Your\nFinancial Today',
  //   'Build From\nZero to Freedom',
  //   'Start Together'
  // ];

  // List<String> subtitles = [
  //   'Our system is helping you\nachieve a better goal',
  //   'We provide tips for you so that\nyou can adapt easier',
  //   'We will guide you to where\nyou wanted it too'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 28),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(right: 24),
                child: TextButton(
                  onPressed:
                      () {}, //jangan lupa dikasih ke home ini ntar diarahin ke situ ngab
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      'SKIP',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width:
                  360, //360 iki men mepet kanan kirine, nek pakai sesuai di figma engga mepet je
              height: 524,
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(20)),
              child: PageView(
                controller: _controller,
                children: [
                  const Page1(),
                  const Page2(),
                  const Page3(),
                  // CarouselSlider(
                  //   // carouselController: carouselController,
                  //   items: const [Page1(), Page2(), Page3()],
                  //   options: CarouselOptions(
                  //     autoPlay: true,
                  //     height: 524,
                  //     viewportFraction: 1,
                  //     onPageChanged: (index, reason) {
                  //       setState(
                  //         () {
                  //           currentIndex = index;
                  //           _controller.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.ease); // Add this line
                  //         },
                  //       );
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.deepPurple.shade100,
                dotHeight: 12,
                dotWidth: 12,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              width: 283,
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
                child: Text(
                  'SIGN IN',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 283,
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(56),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 0.5,
                    ),
                  ),
                ),
                child: Text(
                  'SIGN UP',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
