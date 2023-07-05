import '../login_page/widgets/logo_texts.dart';
import '../login_page/widgets/register_row.dart';
import '../login_page/widgets/sign_in_button.dart';
import 'register_page_parts.dart/text_field_register_box.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/texts.dart';
import '../../widgets/widgets_custom/text_field.dart';
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
