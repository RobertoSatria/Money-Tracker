import 'package:bank_sha/shared/theme.dart';
// import 'package:bank_sha/view/pages/sign_in_page.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:bank_sha/view/widgets/input_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // ignore: unused_field
  final bool _obsecureText = true;
  // ignore: unused_field
  final String _password = '';
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
            height: 45,
            width: 240,
            child: Text(
              'Create Account',
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            width: 151,
            child: Text(
              "It's quick and easy",
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            width: 327,
            height: 486,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                  title: 'Full Name',
                  hintText: 'Your Full Name',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Email Address',
                  hintText: 'Your Email Address',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormPasswordField(
                    title: 'Password', hintText: 'Your Password'),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormPasswordField(title: 'Retype Password', hintText: 'Retype Your Password'),
                const SizedBox(
                  height: 28,
                ),
                CustomFilledButton(
                    title: 'Sign Up',
                    width: 283,
                    height: 50,
                    bgColor: purpleColor,
                    fontColor: whiteTextStyle,
                    fontSize: 16,
                    fontWeight: bold),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const TextRowtoTextbutton(textBiasa: 'Already have an Account?', textButton: 'Sign In'),
        ],
      ),
    );
  }
}
