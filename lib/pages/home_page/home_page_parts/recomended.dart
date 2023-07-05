import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/widgets/widgets_custom/text.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constants/assets.dart';
import '../../../widgets/ad_container.dart';

class RecomendedAd extends StatelessWidget {
  const RecomendedAd({super.key});

  @override
  Widget build(BuildContext context) {
    return AdContainer(
        adImage: AppAssets.whiteShoe,
        firstLineText: AppTexts.recomended,
        secondLineText: AppTexts.product,
        adBottomLine: TextCustom(text: AppTexts.bestForYOu,colorText: AppColors.lightGrey,fontSizeText: 12,));
  }
}
