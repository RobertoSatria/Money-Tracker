import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/img_onboarding1.png', height: 331),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Grow Your\nFinancial Today',
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
              'We provide tips for you so that\nyou can adapt easier',
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