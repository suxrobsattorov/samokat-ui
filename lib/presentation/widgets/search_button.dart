import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_icons.dart';

// ignore: must_be_immutable
class SearchButton extends StatelessWidget {
  Color bacColor;
  Color iconColor;

   SearchButton({
    super.key,
    required this.bacColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        left: 30,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: bacColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Image.asset(
        AppIcons.search,
        color: iconColor,
      ),
    );
  }
}
