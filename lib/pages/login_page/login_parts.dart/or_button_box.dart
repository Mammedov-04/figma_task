import 'package:flutter/material.dart';

import '../../../utilities/constants/assets.dart';
import '../../../utilities/constants/texts.dart';
import '../widgets/or_buttons.dart';

class OrButtonBox extends StatelessWidget {
  const OrButtonBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrButton(
          orButtonSizeFix: MediaQuery.of(context).size.width / 6,
          orButtonSizeFix2: MediaQuery.of(context).size.width / 5.6,
          orButtonText: AppTexts.withGoogle,
          buttonsAsset: AppAssets.google,
        ),
        const SizedBox(
          height: 12,
        ),
        OrButton(
          orButtonSizeFix: MediaQuery.of(context).size.width / 6,
          orButtonSizeFix2: MediaQuery.of(context).size.width / 7,
          orButtonText: AppTexts.withFacebook,
          buttonsAsset: AppAssets.facebook,
        ),
      ],
    );
  }
}
