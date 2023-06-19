import 'package:figma_task/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class SigInButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Function()? onPressed;
  const SigInButton(
      {super.key,
      this.onPressed,
      required this.buttonColor,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            minimumSize: Size(
              MediaQuery.of(context).size.width / 1.1,
              MediaQuery.of(context).size.height / 12,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: AppColors.white, fontSize: 17),
        ));
  }
}
