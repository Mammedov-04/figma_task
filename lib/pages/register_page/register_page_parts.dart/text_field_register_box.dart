import 'package:flutter/material.dart';

import '../../../utilities/constants/texts.dart';
import '../../../widgets/widgets_custom/text_field.dart';

class TextFieldRegisteBox extends StatelessWidget {
  const TextFieldRegisteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextFieldCustomWidget(
            obscureText: false,
            hintText: AppTexts.fullName,
            prefixIcon: Icon(Icons.person_outlined)),
        TextFieldCustomWidget(
            obscureText: false,
            hintText: AppTexts.email,
            prefixIcon: Icon(Icons.email_outlined)),
        TextFieldCustomWidget(
            obscureText: false,
            hintText: AppTexts.password,
            prefixIcon: Icon(Icons.lock_outline)),
        TextFieldCustomWidget(
            obscureText: false,
            hintText: AppTexts.passwordAgain,
            prefixIcon: Icon(Icons.lock_outline)),
        SizedBox(height: 15),
      ],
    );
  }
}
