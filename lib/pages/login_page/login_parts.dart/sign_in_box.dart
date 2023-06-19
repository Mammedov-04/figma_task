import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/texts.dart';
import '../../register_page/register.dart';
import '../widgets/sign_in_button.dart';

class SignInBox extends StatelessWidget {
  final Function()? onPressed;
  const SignInBox({super.key, this.onPressed});

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SigInButton(
        buttonColor: AppColors.lightbLue,
        buttonText: AppTexts.signIN,
        onPressed: onPressed,
      ),
    );
  }
}
