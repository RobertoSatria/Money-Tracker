import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/pages/sign_in_page.dart';
import 'package:bank_sha/view/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final Color bgColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextStyle fontColor;
  final VoidCallback?
      onPressed; //tanda ? menandakan nullable atau engga, jadi boleh null boleh engga
  const CustomFilledButton(
      {required this.title,
      required this.width,
      required this.height,
      required this.bgColor,
      required this.fontColor,
      required this.fontSize,
      required this.fontWeight,
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed, //to home page
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: fontColor.copyWith(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

class TextRowtoTextbutton extends StatelessWidget {
  final String textBiasa;
  final String textButton;

  const TextRowtoTextbutton({
    required this.textBiasa,
    required this.textButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textBiasa,
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
                builder: (context) {
                  if (textButton == 'Sign In') {
                    // return MaterialPageRoute(builder: (context) => SignInPage());
                    return const SignInPage();
                  } else {
                    return const SignUpPage();
                  }
                },
              ),
            );
          },
          child: Text(
            textButton,
            style: purpleTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
        ),
      ],
    );
  }
}
