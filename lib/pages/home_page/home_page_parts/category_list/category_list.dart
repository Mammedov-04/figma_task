import 'package:figma_task/widgets/widgets_custom/list_view_builder.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/constants/assets.dart';
import '../../../../utilities/constants/texts.dart';
import 'list_item_body.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewBuilderCustom(
      height: MediaQuery.of(context).size.height / 8,
      itemCount: 1,
      widget: const Row(
        children: [
          ListCategoryItem(itemName: AppTexts.shirt, itemIcon: AppAssets.shirt),
          ListCategoryItem(itemName: AppTexts.dress, itemIcon: AppAssets.dress),
          ListCategoryItem(
              itemName: AppTexts.manBag, itemIcon: AppAssets.manBag),
          ListCategoryItem(
              itemName: AppTexts.womanBag, itemIcon: AppAssets.womanBag),
          ListCategoryItem(itemName: AppTexts.shoe, itemIcon: AppAssets.shoe),
        ],
      ),
    );
  }
}
