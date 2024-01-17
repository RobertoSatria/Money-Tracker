import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 283,
                          height: 45,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Color(0xFFEFEEF1),
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Your Full Name',
                              hintStyle: greyTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular,
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: lightGreyColor,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address',
                          textAlign: TextAlign.left,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 283,
                          height: 45,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Color(0xFFEFEEF1),
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Your Email Address',
                              hintStyle: greyTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular,
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width:
                                      1, // Increase the border thickness here
                                  color: lightGreyColor,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          textAlign: TextAlign.left,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 283,
                          height: 45,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Color(0xFFEFEEF1),
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: TextFormField(
                            obscureText: _obsecureText,
                            onSaved: (value) {
                              _password = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obsecureText = !_obsecureText;
                                  });
                                },
                                child: Icon(
                                  _obsecureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              hintStyle: greyTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular,
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width:
                                      1, // Increase the border thickness here
                                  color: lightGreyColor,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      //ini belum dibuat logicnya ya, harus sama pokoknya sama password yang di input diatasnya
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Retype Password',
                          textAlign: TextAlign.left,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 283,
                          height: 45,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Color(0xFFEFEEF1),
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: TextFormField(
                            obscureText: _obsecureText,
                            onSaved: (value) {
                              _password = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Retype Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obsecureText = !_obsecureText;
                                  });
                                },
                                child: Icon(
                                  _obsecureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              hintStyle: greyTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular,
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width:
                                      1, // Increase the border thickness here
                                  color: lightGreyColor,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
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
                          'Sign Up',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an Account?',
                textAlign: TextAlign.center,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                child: Text(
                  'Sign In',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
