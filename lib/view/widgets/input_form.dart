// ignore_for_file: unused_field

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormField extends StatelessWidget {
  final String title;
  final String hintText;
  bool obsecuretext;
  final TextInputType inputType;

  CustomFormField({
    required this.title,
    required this.hintText,
    this.obsecuretext = true,
    this.inputType = TextInputType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
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
            obscureText: obsecuretext,
            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: hintText,
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
    );
  }
}

// ignore: must_be_immutable
class CustomFormPasswordField extends StatefulWidget {
  final String title;
  final String hintText;
  bool oobsecureText = true;
  String ppassword = '';
  CustomFormPasswordField({
    required this.title,
    required this.hintText,
    this.ppassword = '',
    this.oobsecureText = true,
    super.key,
  });

  @override
  State<CustomFormPasswordField> createState() =>
      _CustomFormPasswordFieldState();
}

class _CustomFormPasswordFieldState extends State<CustomFormPasswordField> {
  // bool _obsecureText = true;
  // String _password = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
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
            obscureText: widget.oobsecureText,
            onSaved: (value) {
              widget.ppassword = value!;
            },
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.oobsecureText = !widget.oobsecureText;
                  });
                },
                child: Icon(
                  widget.oobsecureText
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
        ),
      ],
    );
  }
}
