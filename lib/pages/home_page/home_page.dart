import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_task/pages/home_page/home_page_parts/carousel.dart';
import 'package:figma_task/pages/home_page/home_page_parts/line_container.dart';
import 'package:figma_task/pages/home_page/home_page_parts/searc_product_line.dart';
import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/constants/texts.dart';
import 'package:figma_task/widgets/icon_button.dart';
import 'package:figma_task/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchProductLine(),
            LineContainer(),
            Carousel()
          ],
        ),
      ),
    );
  }
}
