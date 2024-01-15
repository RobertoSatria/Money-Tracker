import 'package:bank_sha/shared/theme.dart';
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

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together'
  ];

  List<String> subtitles = [
    'Our system is helping you\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too'
  ];
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
              width: 360,
              height: 524,
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      Image.asset('assets/img_onboarding1.png', height: 331),
                      Image.asset('assets/img_onboarding2.png', height: 331),
                      Image.asset('assets/img_onboarding3.png', height: 331),
                    ],
                    options: CarouselOptions(
                      height: 331,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    carouselController: carouselController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SmoothPageIndicator(
              controller: PageController(
                initialPage: 0,
                viewportFraction: 1.0,
              ),
              count: currentIndex,
              axisDirection: Axis.horizontal,
              effect: const WormEffect(
                spacing: 10.0,
                radius: 4.0,
                dotWidth: 12.0,
                dotHeight: 12.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.indigo,
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
