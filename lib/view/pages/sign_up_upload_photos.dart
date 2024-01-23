import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:bank_sha/view/widgets/input_form.dart';
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
            margin: const EdgeInsets.symmetric(
              //ncek komennya bro
              vertical:
                  100, //di line 13 udah ada horizontal 24, kalo ditambah ini, apakah dia di appnya bakal jadi 124 atau tetep 100 gitu, hmm menarik
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
            height: 391,
            width: 327,
            padding: const EdgeInsets.symmetric(
              vertical: 22,
              horizontal: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    // ini dia ibarat masih initial gitu deh
                    fontSize: 18,
                    fontWeight:
                        semiBold, //ini ntar dibuat dynamic according to the fullname sign up kita ajah, btw belum di setup karna belum setup backend
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  title: 'Set PIN (6 digit number)',
                  hintText: '',
                  inputType: TextInputType.number,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                    title: 'Continue',
                    width: 283,
                    height: 50,
                    bgColor: purpleColor,
                    fontColor: whiteTextStyle,
                    fontSize: 16,
                    fontWeight: semiBold),
              ],
            ),
          )
        ],
      ),
    );
  }
}
