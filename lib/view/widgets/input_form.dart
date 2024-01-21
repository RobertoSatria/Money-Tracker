// ignore_for_file: unused_field

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final String hintText;

  const CustomFormField({
    required this.title,
    required this.hintText,
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

class CustomFormPasswordField extends StatefulWidget {
  final String title;
  final String hintText;
  final bool _obsecureText = true;
  const CustomFormPasswordField({
    required this.title,
    required this.hintText,
    super.key,
  });

  @override
  State<CustomFormPasswordField> createState() =>
      _CustomFormPasswordFieldState();
}

class _CustomFormPasswordFieldState extends State<CustomFormPasswordField> {
  bool _obsecureText = true;
  String _password = '';
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
            obscureText: widget._obsecureText,
            onSaved: (value) {
              _password = value!;
            },
            decoration: InputDecoration(
                hintText: widget.hintText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obsecureText = !widget._obsecureText;
                  });
                },
                child: Icon(
                  widget._obsecureText
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
