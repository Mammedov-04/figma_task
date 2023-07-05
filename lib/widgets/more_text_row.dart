import 'package:flutter/material.dart';

import '../utilities/constants/colors.dart';

class MoreRowLine extends StatelessWidget {
  final String nameText;
  final String moreText;
  const MoreRowLine(
      {super.key, required this.nameText, required this.moreText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 25, bottom:12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameText,
            style: const TextStyle(
                color: AppColors.darkbLue, fontWeight: FontWeight.w700),
          ),
          Text(moreText,
              style: const TextStyle(
                  color: AppColors.lightbLue, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
