import '../../../../widgets/widgets_custom/text.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/constants/colors.dart';

class DiscountLine extends StatelessWidget {
  final String lineText;
  const DiscountLine({super.key, required this.lineText});

  @override
  Widget build(BuildContext context) {
    return TextCustom(
      text: lineText,
      colorText: AppColors.white,
      fontSizeText: 24,
      fontWeightText: FontWeight.w700,
    );
  }
}
