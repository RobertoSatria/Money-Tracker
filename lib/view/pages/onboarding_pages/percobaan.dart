import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MediaQuery(
      // ignore: deprecated_member_use
      data: MediaQueryData.fromView(ui.window),
      child: const Directionality(
          textDirection: TextDirection.rtl, child: MainPage())));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final CarouselController controller = CarouselController();
  int activeIndex = 0;
  final urlImages = [
    'https://image-cdn.hypb.st/https%3A%2F%2Fid.hypebeast.com%2Ffiles%2F2023%2F06%2Ffilm-mobile-suit-gundam-seed-bakalan-dirilis-setelah-20-tahun-01.jpeg?w=1080&cbr=1&q=90&fit=max',
    'https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2023/02/featured-image-40a86fe5f-4e1e-4344-882a-6b3414f5083d.jpg',
    'https://1.bp.blogspot.com/-Wo0FCCOTC8E/XHpBv9hovSI/AAAAAAAAFlI/FJzEgF1sWOsKr2xKUcxwa-nLk8vG2GBpACLcBGAs/s1600/gundam%2Buniverse%2Brx-78-2%2Bgundam.png',
    'https://wallpapercave.com/wp/wp6264924.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              carouselController: controller,
              itemCount: urlImages.length,
              options: CarouselOptions(
                initialPage: 0,
                height: 400,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];

                return buildImage(urlImage, index);
              },
            ),
            const SizedBox(
              height: 32,
            ),
            buildIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 12), //spacing between one image to the others
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const JumpingDotEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.blueAccent,
          dotHeight: 12,
          dotWidth: 12,
        ),
      );
}
