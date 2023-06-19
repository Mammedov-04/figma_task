import 'package:figma_task/utilities/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constants/texts.dart';
import '../../../widgets/text_field.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        15.h,
        const TextFieldCustomWidget(
            obscureText: false,
            prefixIcon: Icon(Icons.email_outlined),
            hintText: AppTexts.email),
        const TextFieldCustomWidget(
          prefixIcon: Icon(Icons.lock_outline),
          hintText: AppTexts.password,
          obscureText: true,
        ),
      ],
    );
  }
}
