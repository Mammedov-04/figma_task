import 'package:flutter/material.dart';

class ListViewBuilderCustom extends StatelessWidget {
  final double? height;
  final int? itemCount;
  final Widget? widget;
  const ListViewBuilderCustom({super.key, this.height, this.widget, this.itemCount});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left:20),
          child: widget,
        );
      },
    );
  }
}
