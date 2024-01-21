import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SignUpUploadProfile extends StatelessWidget {
  const SignUpUploadProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          // vertical: 64,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.symmetric( //ncek komennya bro
              vertical: 100, //di line 13 udah ada horizontal 24, kalo ditambah ini, apakah dia di appnya bakal jadi 124 atau tetep 100 gitu, hmm menarik
              horizontal: 110,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            textAlign: TextAlign.left,
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            
          )
        ],
      ),
    );
  }
}
