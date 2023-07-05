import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final Function()? onPressed;
  final Widget iconWidget;
  const IconButtonCustom({super.key, this.onPressed, required this.iconWidget});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: iconWidget);
  }
}
