import '../../../utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class LineContainer extends StatelessWidget {
  const LineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 1.5,
        color: AppColors.neutralLight,
      ),
    );
  }
}