import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:flutter/material.dart';

class LineOrLine extends StatelessWidget {
  const LineOrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.6,
          color: AppColors.neutralLight,
          height: 1.5,
        ),
        const Text(
          AppTexts.or,
          style: TextStyle(
              color: AppColors.lightGrey,
              fontSize: 17,
              fontWeight: FontWeight.w700),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2.6,
          color: AppColors.neutralLight,
          height: 1.5,
        )
      ],
    );
  }
}
