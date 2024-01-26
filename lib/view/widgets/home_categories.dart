import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  final String imageAsset;
  final String title;
  final VoidCallback? onTap;

  const HomeCategories({
    super.key,
    required this.imageAsset,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(
                imageAsset,
                width: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
