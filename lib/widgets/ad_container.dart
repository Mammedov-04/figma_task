import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../pages/home_page/home_page_parts/carousel/discount_texts.dart';

class AdContainer extends StatelessWidget {
  final String adImage;
  final String firstLineText;
  final String secondLineText;
  final Widget? adBottomLine;
  const AdContainer(
      {super.key,
      required this.adImage,
      this.adBottomLine,
      required this.firstLineText,
      required this.secondLineText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 4.5,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.asset(adImage),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 32, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DiscountLine(lineText: firstLineText),
                  DiscountLine(lineText: secondLineText),
                  15.h,
                  SizedBox(
                      child: adBottomLine)
                ],
              )),
        ],
      ),
    );
  }
}
