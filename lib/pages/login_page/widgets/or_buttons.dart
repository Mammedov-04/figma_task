import '../../../utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class OrButton extends StatelessWidget {
  final String buttonsAsset;
  final String orButtonText;
  final double? orButtonSizeFix;
  final double? orButtonSizeFix2;
  const OrButton(
      {super.key, required this.orButtonText, required this.buttonsAsset, this.orButtonSizeFix, this.orButtonSizeFix2});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white,
            minimumSize: Size(
              MediaQuery.of(context).size.width / 1.1,
              MediaQuery.of(context).size.height / 12,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8))),
        icon: Row(
          children: [
            Image.asset(buttonsAsset,),
            SizedBox(
              width: orButtonSizeFix ,
            ),
            Text(orButtonText, style: TextStyle(color: AppColors.lightGrey,fontSize: 17),),
            SizedBox(
              width: orButtonSizeFix2,
            ),
          ],
        ),
        label: Text(''));
  }
}
