import 'package:flutter/material.dart';

import '../../constants/Texts.dart';
import '../../constants/app_colors.dart';

// ignore: must_be_immutable
class TitleAndIcon extends StatelessWidget {
  String title;
  double padding;

  TitleAndIcon({
    super.key,
    required this.title,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Texts.text16(title, AppColors.appBlack),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 20,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
