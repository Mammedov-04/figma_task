import 'package:figma_task/widgets/ad_container.dart';

import 'discount_texts.dart';
import 'time_left.dart';
import 'time_left_dots.dart';
import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/texts.dart';
import '../../../../utilities/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/constants/assets.dart';

class CarouselBody extends StatelessWidget {
  const CarouselBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdContainer(
      adImage: AppAssets.redShoes,
      firstLineText: AppTexts.superFlashSale,
      secondLineText: AppTexts.discount50Value,
      adBottomLine: Row(
        children: [
          TimeLeft(time: AppTexts.timeHours),
          TimeLeftDots(),
          TimeLeft(time: AppTexts.timeMinutes),
          TimeLeftDots(),
          TimeLeft(time: AppTexts.timeSeconds),
        ],
      ),
    );
  }
}
