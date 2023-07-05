import 'package:flutter/material.dart';

import '../../utilities/constants/colors.dart';
import '../../utilities/constants/texts.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:  AppColors.lightbLue,
        unselectedItemColor:  AppColors.lightGrey,
        selectedLabelStyle: const TextStyle( fontSize: 14),
        unselectedLabelStyle:
            const TextStyle(fontSize: 14),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: AppTexts.home,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: AppTexts.explore),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: AppTexts.cart),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: AppTexts.offer),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: AppTexts.account),
        ]);
  }
}
