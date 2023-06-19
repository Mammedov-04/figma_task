import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final Widget? prefixIcon;
  final String? hintText;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  const TextFieldCustomWidget(
      {super.key, this.prefixIcon, this.hintText, required this.obscureText, this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, right: 16, left: 16),
      child: TextFormField(
        obscureText: obscureText,
        cursorColor: AppColors.lightbLue,
        decoration: InputDecoration(
            contentPadding: contentPadding,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.neutralLight),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.neutralLight),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightbLue, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            prefixIcon: prefixIcon,
            prefixIconColor: AppColors.lightGrey,
            hintText: hintText,
            hintStyle:
                const TextStyle(fontSize: 14, color: AppColors.lightGrey)),
        validator: (value) {
          if (value!.isEmpty) {
            return AppTexts.fillEverything;
          } else {
            return null;
          }
        },
      ),
    );
  }
}
