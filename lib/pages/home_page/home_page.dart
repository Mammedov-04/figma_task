import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_task/pages/home_page/home_page_parts/mega_sale_list.dart';
import 'package:figma_task/pages/home_page/home_page_parts/recomended.dart';
import 'package:figma_task/utilities/extensions/sized_box.dart';
import 'package:figma_task/widgets/ad_container.dart';
import 'package:figma_task/widgets/widgets_custom/bottom_navigation_bar.dart';
import 'package:figma_task/widgets/widgets_custom/grid_view.dart';
import '../../utilities/constants/assets.dart';
import 'home_page_parts/carousel/carousel.dart';
import 'home_page_parts/category_list/category_list.dart';
import 'home_page_parts/flash_sale_list.dart';
import '../../widgets/more_text_row.dart';
import 'home_page_parts/line_container.dart';
import 'home_page_parts/searc_product_line.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/texts.dart';
import '../../widgets/widgets_custom/icon_button.dart';
import '../../widgets/widgets_custom/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchProductLine(),
              const LineContainer(),
              const Carousel(),
              const MoreRowLine(
                  moreText: AppTexts.moreCategory, nameText: AppTexts.category),
              const CategoryList(),
              const MoreRowLine(
                  nameText: AppTexts.flashSale, moreText: AppTexts.seeMore),
              const FlashSaleList(),
              const MoreRowLine(
                  nameText: AppTexts.megaSale, moreText: AppTexts.seeMore),
              const MegaSaleList(),
              10.h,
              const RecomendedAd(),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
