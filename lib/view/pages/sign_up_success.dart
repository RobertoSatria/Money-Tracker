import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              'Grow your finance\nstart together with us',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: 'Get Started',
              width: 183,
              height: 50,
              bgColor: purpleColor,
              fontColor: whiteTextStyle,
              fontSize: 16,
              fontWeight: semiBold,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  //ini gunanya biar homepagenya kaga bisa ke undo ke page ini lagi gitu
                  context,
                  '/home-page',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
