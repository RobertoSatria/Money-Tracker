import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/pages/onboarding_pages/page1.dart';
import 'package:bank_sha/view/pages/onboarding_pages/page2.dart';
import 'package:bank_sha/view/pages/onboarding_pages/page3.dart';
import 'package:bank_sha/view/pages/sign_up_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int activeIndex = 0;
  final CarouselController carouselController = CarouselController();

  List<Widget> onboardpages = const [
    Page1(),
    Page2(),
    Page3(),
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
              width: 327, 
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
                  CarouselSlider.builder(
                    carouselController: carouselController,
                    itemCount: onboardpages.length,
                    options: CarouselOptions(
                      initialPage: 0,
                      height: 476,
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return buildImage(index);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            buildIndicator(),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
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

  Widget buildImage(int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child:
            onboardpages[index], // Access the widget from the list using index
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: onboardpages.length,
        effect: const JumpingDotEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.blueAccent,
          dotHeight: 12,
          dotWidth: 12,
        ),
      );
}
