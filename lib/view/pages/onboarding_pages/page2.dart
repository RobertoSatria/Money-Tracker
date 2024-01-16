import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/img_onboarding2.png', height: 331),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Build From\nZero to Freedom',
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
              'Our system is helping you\nachieve a better goal',
              style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    );
  }
}