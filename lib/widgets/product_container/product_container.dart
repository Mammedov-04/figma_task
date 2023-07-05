import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? containerColor;
  final Color borderColor;
  final Widget? containerChild;
  const ProductContainer(
      {super.key,
      this.width,
      this.height,
      this.containerColor,
      required this.borderColor, this.containerChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(5)),
          child: containerChild,
    );
  }
}
