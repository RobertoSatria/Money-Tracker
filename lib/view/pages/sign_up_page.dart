import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            height: 482,
            margin: const EdgeInsets.symmetric(
              horizontal: 22,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 28,
            ),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
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
                          hintStyle: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1, // Increase the border thickness here
                              color: lightGreyColor,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
