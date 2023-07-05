import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final Color? colorText;
  final FontWeight? fontWeightText;
  final double? fontSizeText;
  const TextCustom(
      {super.key,
      required this.text,
      this.colorText,
      this.fontWeightText,
      this.fontSizeText});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colorText, fontWeight: fontWeightText, fontSize: fontSizeText),
    );
  }
}
