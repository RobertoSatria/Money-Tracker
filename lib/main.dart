import 'package:bank_sha/view/pages/onboarding_page.dart';
import 'package:bank_sha/view/pages/sign_in_page.dart';
import 'package:bank_sha/view/pages/sign_up_page.dart';
import 'package:bank_sha/view/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(), //ini buat navigator push named biar naekin performa dari appnya sendiri
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
      },
    );
  }
}
