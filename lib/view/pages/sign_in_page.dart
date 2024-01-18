import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/pages/sign_up_page.dart';
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
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
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 283,
                  height: 127,
                  child: Column(
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
                      TextFormField(
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
                              width: 1, // Increase the border thickness here
                              color: lightGreyColor,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
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
                    ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have account?",
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
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(left: 3),
                ),
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.left,
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ],
          ),
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
              SizedBox(
                width: 150,
                height: 50,
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
              SizedBox(
                width: 150,
                height: 50,
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
