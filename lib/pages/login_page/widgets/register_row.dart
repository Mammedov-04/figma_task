import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/widgets/text_button.dart';
import 'package:flutter/material.dart';

class RegisterLine extends StatelessWidget {
  final String firstText;
  final String textButton;
  const RegisterLine({super.key, required this.firstText, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(color: AppColors.lightGrey),
        ),
        TextButtonCustom(
          textButton: textButton,
          textColor: AppColors.lightbLue,
        )
      ],
    );
  }
}
