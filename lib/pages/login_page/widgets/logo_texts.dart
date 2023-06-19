import 'package:figma_task/utilities/constants/assets.dart';
import 'package:figma_task/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class LogoAndTexts extends StatelessWidget {
  final String boldText;
  final String lighterText;
  const LogoAndTexts(
      {super.key, required this.boldText, required this.lighterText});

  @override
  Widget build(BuildContext context) {
    TextStyle boldTextStyle = const TextStyle(
        fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.darkbLue);
    TextStyle lighterTextStyle = const TextStyle(
        fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.lightGrey);

    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 8),
          Image.asset(AppAssets.logo),
          const SizedBox(height: 6),
          Text(boldText, style: boldTextStyle),
          const SizedBox(height: 4),
          Text(lighterText, style: lighterTextStyle),
        ],
      ),
    );
  }
}
