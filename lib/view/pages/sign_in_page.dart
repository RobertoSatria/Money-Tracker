import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:bank_sha/view/widgets/input_form.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obsecureText = true;
  // ignore: unused_field
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 64,
        ),
        children: [
          SizedBox(
            height: 60,
            width: 191,
            child: Text(
              'Sign In &\nGrow Your Finance',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            width: 327,
            height: 331,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 28,
              horizontal: 22,
            ),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(14)),
            child: Column(
              //INI BUAT COLUMN YANG SECARA KESELURUHAN DI DALAM SATU CONTAINERNYA JANGAN DIHAPUS
              children: [
                const CustomFormField(
                    title: 'Email Address', hintText: 'Your email Address'),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormPasswordField(
                    title: 'Password', hintText: 'Your Password'),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: blueTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: 283,
                  height: 50,
                  child: TextButton(
                    onPressed: () {}, //to home page
                    style: TextButton.styleFrom(
                      backgroundColor: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const TextRowtoTextbutton(
              textBiasa: "Don't have an account?", textButton: 'Sign Up'),
          const SizedBox(
            height: 36,
          ),
          Text(
            'Or Sign In With',
            textAlign: TextAlign.center,
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 52,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {}, //to home page
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff1877F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(56),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize
                        .min, // Ensures the Row shrinks to fit content
                    children: [
                      Image.asset(
                        'assets/img_facebook.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 8), // Adjust spacing as needed
                      Text(
                        'Facebook',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {}, //to home page
                  style: TextButton.styleFrom(
                    backgroundColor: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(56),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize
                        .min, // Ensures the Row shrinks to fit content
                    children: [
                      Image.asset(
                        'assets/img_google.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 5), // Adjust spacing as needed
                      Image.asset(
                        'assets/text_google.png',
                        width: 58,
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
