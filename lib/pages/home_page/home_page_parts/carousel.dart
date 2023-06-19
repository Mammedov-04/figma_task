import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_task/utilities/constants/assets.dart';
import 'package:figma_task/utilities/constants/colors.dart';
import 'package:figma_task/utilities/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: 5,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return Container(
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: Image.asset(AppAssets.redShoes),
              );
            },
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 4.5,
                onPageChanged: (index, reason) {
                  activeIndex = index;
                  setState(() {});
                },
                viewportFraction: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: false)),
        13.h,
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 5,
          effect: WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: AppColors.neutralLight,
              activeDotColor: AppColors.lightbLue),
        )
      ],
    );
  }
}
