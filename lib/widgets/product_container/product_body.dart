import 'product_container.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/extensions/sized_box.dart';
import '../widgets_custom/text.dart';
import 'package:flutter/material.dart';

class ProductBody extends StatelessWidget {
  final String nameOfProduct;
  final String costOfProductDiscount;
  final String costOfProductOriginal;
  final String valaueOfDiscount;
  const ProductBody(
      {super.key,
      required this.nameOfProduct,
      required this.costOfProductDiscount,
      required this.costOfProductOriginal,
      required this.valaueOfDiscount});

  @override
  Widget build(BuildContext context) {
    return ProductContainer(
        borderColor: AppColors.neutralLight,
        containerColor: AppColors.white,
        width: MediaQuery.of(context).size.width / 2.8,
        height: MediaQuery.of(context).size.height,
        containerChild: Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 7, left: 16, right: 16),
          child: Column(children: [
            ProductContainer(
              borderColor: AppColors.neutralLight,
              containerColor: AppColors.white,
               height: MediaQuery.of(context).size.height / 8.6,
            ),
            4.h,
            Text(
              nameOfProduct,
              style: const TextStyle(
                  color: AppColors.darkbLue,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            6.h,
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: TextCustom(
                  text: costOfProductDiscount,
                  colorText: AppColors.lightbLue,
                  fontWeightText: FontWeight.w700,
                  fontSizeText: 12,
                )),
            6.h,
            Row(
              children: [
                TextCustom(
                  text: costOfProductOriginal,
                  colorText: AppColors.lightGrey,
                  fontWeightText: FontWeight.w400,
                  fontSizeText: 10,
                ),
                8.w,
                TextCustom(
                  text: valaueOfDiscount,
                  colorText: AppColors.lightRed,
                  fontWeightText: FontWeight.w700,
                  fontSizeText: 10,
                ),
              ],
            )
          ]),
        ));
  }
}
