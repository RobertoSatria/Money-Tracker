import 'dart:typed_data';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:bank_sha/view/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUpUploadProfile extends StatefulWidget {
  const SignUpUploadProfile({super.key});

  @override
  State<SignUpUploadProfile> createState() => _SignUpUploadProfileState();
}

class _SignUpUploadProfileState extends State<SignUpUploadProfile> {
  // File? _selectedImage;
  Uint8List? _image;
  void selectImage() async {
    Uint8List? img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 64,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : const CircleAvatar(
                              radius: 64,
                              backgroundColor: Color(0xffF6F8FB),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffF6F8FB),
                                radius: 24,
                                backgroundImage:
                                    AssetImage('assets/ic_upload.png'),
                              )),
                      Positioned.fill(
                        child: InkWell(
                          onTap:
                              selectImage, // make this function kan drag into the profile, ini nanti pas akhir akhir aja
                          child: Ink.image(
                            image: const AssetImage('assets/ic_upload.png'),
                          ),
                        ),
                      ),
                    ],
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Set PIN (6 digit number)',
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
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: '',
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
                    height: 21,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    width: 283,
                    height: 50,
                    bgColor: purpleColor,
                    fontColor: whiteTextStyle,
                    fontSize: 16,
                    fontWeight: semiBold,
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up-success');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
