import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/widgets/widgets_custom/list_view_builder.dart';
import 'package:flutter/material.dart';

import '../../../widgets/product_container/product_body.dart';

class MegaSaleList extends StatelessWidget {
  const MegaSaleList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewBuilderCustom(
      height: MediaQuery.of(context).size.height / 4,
      itemCount: 3,
      widget: const ProductBody(
        nameOfProduct: AppTexts.nikeAir,
        costOfProductDiscount: AppTexts.productInDiscount,
        costOfProductOriginal: AppTexts.productOriginalCost,
        valaueOfDiscount: AppTexts.valueOfDiscount,
      ),
    );
  }
}