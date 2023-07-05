import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/texts.dart';
import '../../../widgets/widgets_custom/icon_button.dart';
import '../../../widgets/widgets_custom/text_field.dart';

class SearchProductLine extends StatelessWidget {
  const SearchProductLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const Expanded(
            child: TextFieldCustomWidget(
              contentPadding: EdgeInsets.all(4),
              obscureText: false,
              hintText: AppTexts.searchProduct,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.lightbLue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                const IconButtonCustom(
                    iconWidget: Icon(
                  Icons.favorite_outline,
                  size: 32,
                )),
                Stack(
                  children: [
                    const IconButtonCustom(
                        iconWidget: Icon(
                      Icons.notifications_none_rounded,
                      size: 32,
                    )),
                    Positioned(
                      top: 11,
                      left: 24,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.lightRed),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
