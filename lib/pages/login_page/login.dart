import 'login_parts.dart/or_button_box.dart';
import 'login_parts.dart/sign_in_box.dart';
import 'widgets/line_or.dart';
import 'widgets/logo_texts.dart';
import 'widgets/or_buttons.dart';
import 'widgets/register_row.dart';
import 'widgets/sign_in_button.dart';
import '../register_page/register.dart';
import '../../utilities/constants/assets.dart';
import '../../utilities/constants/texts.dart';
import '../../utilities/extensions/sized_box.dart';
import '../../widgets/widgets_custom/text_button.dart';
import '../../widgets/widgets_custom/text_field.dart';
import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';
import 'login_parts.dart/text_field_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const LogoAndTexts(
                boldText: AppTexts.welcome,
                lighterText: AppTexts.signToContinue,
              ),
              const TextFieldBox(),
              20.h,
              SignInBox(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const RegisterPage();
                    }));
                  }
                },
              ),
              20.h,
              const LineOrLine(),
              20.h,
              const OrButtonBox(),
              const TextButtonCustom(
                textButton: AppTexts.forgotPassword,
                textColor: AppColors.lightbLue,
              ),
              const RegisterLine(
                firstText: AppTexts.dontHaveAccount,
                textButton: AppTexts.register,
              )
            ],
          ),
        ),
      ),
    );
  }
}
