import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/texts.dart';
import '../../../widgets/widgets_custom/text_button.dart';
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
