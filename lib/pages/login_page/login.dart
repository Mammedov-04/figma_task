import 'package:figma_task/pages/login_page/login_parts.dart/or_button_box.dart';
import 'package:figma_task/pages/login_page/login_parts.dart/sign_in_box.dart';
import 'package:figma_task/pages/login_page/widgets/line_or.dart';
import 'package:figma_task/pages/login_page/widgets/logo_texts.dart';
import 'package:figma_task/pages/login_page/widgets/or_buttons.dart';
import 'package:figma_task/pages/login_page/widgets/register_row.dart';
import 'package:figma_task/pages/login_page/widgets/sign_in_button.dart';
import 'package:figma_task/pages/register_page/register.dart';
import 'package:figma_task/utilities/constants/assets.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/utilities/extensions/sized_box.dart';
import 'package:figma_task/widgets/text_button.dart';
import 'package:figma_task/widgets/text_field.dart';
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
              const LineOrLine(),
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
