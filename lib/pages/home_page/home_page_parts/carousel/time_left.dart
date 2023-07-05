import '../../../../utilities/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/constants/colors.dart';

class TimeLeft extends StatelessWidget {
  final String time;
  const TimeLeft({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            time,
            style: const TextStyle(
                color: AppColors.darkbLue,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          )),
        ),
      ],
    );
  }
}
