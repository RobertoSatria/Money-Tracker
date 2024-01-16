import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/img_onboarding3.png', height: 331),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Start Together',
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
              'We will guide you to where\nyou wanted it too',
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