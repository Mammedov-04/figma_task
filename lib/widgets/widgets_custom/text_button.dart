import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  final String textButton;
  final Color? textColor;
  const TextButtonCustom({super.key, required this.textButton, this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          textButton,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
        ));
  }
}
