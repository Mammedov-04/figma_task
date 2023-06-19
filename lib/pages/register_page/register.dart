import 'package:figma_task/pages/login_page/widgets/logo_texts.dart';
import 'package:figma_task/pages/login_page/widgets/register_row.dart';
import 'package:figma_task/pages/login_page/widgets/sign_in_button.dart';
import 'package:figma_task/pages/register_page/register_page_parts.dart/text_field_register_box.dart';
import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../home_page/home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LogoAndTexts(
                boldText: AppTexts.getStarted,
                lighterText: AppTexts.createAccount),
            const TextFieldRegisteBox(),
            SigInButton(
              onPressed: (){ Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));},
                buttonColor: AppColors.lightbLue,
                buttonText: AppTexts.signUp),
            const RegisterLine(
              firstText: AppTexts.haveAccount,
              textButton: AppTexts.signIN,
            )
          ],
        ),
      ),
    );
  }
}
