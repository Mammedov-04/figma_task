import 'package:figma_task/utilities/extensions/sized_box.dart';

import '../../../../utilities/constants/assets.dart';
import '../../../../utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class ListCategoryItem extends StatelessWidget {
  final String itemName;
  final String itemIcon;
  const ListCategoryItem(
      {super.key, required this.itemName, required this.itemIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(color: AppColors.neutralLight)),
          child: SizedBox(width: 10, height: 10, child: Image.asset(itemIcon)),
        ),
        10.h,
        SizedBox(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Text(
              itemName,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.lightGrey, fontSize: 10),
            ))
      ],
    );
  }
}
