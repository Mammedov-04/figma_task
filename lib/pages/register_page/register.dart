import 'package:figma_task/pages/login_page/widgets/logo_texts.dart';
import 'package:figma_task/pages/login_page/widgets/register_row.dart';
import 'package:figma_task/pages/login_page/widgets/sign_in_button.dart';
import 'package:figma_task/pages/register_page/register_page_parts.dart/text_field_register_box.dart';
import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LogoAndTexts(
                boldText: AppTexts.getStarted,
                lighterText: AppTexts.createAccount),
            TextFieldRegisteBox(),
            SigInButton(
                buttonColor: AppColors.lightbLue,
                buttonText: AppTexts.signUp),
            RegisterLine(
              firstText: AppTexts.haveAccount,
              textButton: AppTexts.signIN,
            )
          ],
        ),
      ),
    );
  }
}
