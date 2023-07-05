import 'package:flutter/material.dart';

import '../../utilities/constants/texts.dart';
import '../product_container/product_body.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2),
       itemBuilder: (context, index) {
         return  const ProductBody(
          nameOfProduct: AppTexts.nikeAir,
          costOfProductDiscount: AppTexts.productInDiscount,
          costOfProductOriginal: AppTexts.productOriginalCost,
          valaueOfDiscount: AppTexts.valueOfDiscount,
          
           );
       },),
    );
  }
}
