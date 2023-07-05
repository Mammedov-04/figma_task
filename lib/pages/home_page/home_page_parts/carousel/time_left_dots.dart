import '../../../../utilities/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/constants/colors.dart';

class TimeLeftDots extends StatelessWidget {
  const TimeLeftDots({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Padding(
          padding: const EdgeInsets.only( right: 4, left: 4 ),
          child: Column(
            children: [
              Container(
                width: 4,
                height: 4,
                decoration:
                    const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
              ),3.h,
              Container(
                height: 4,
                width: 4,
                decoration:
                    const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
              ),
            ],
          ),
        );
  }
}