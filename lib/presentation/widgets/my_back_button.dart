import 'package:flutter/material.dart';
import '../constants/app_icons.dart';

// ignore: must_be_immutable
class MyBackButton extends StatelessWidget {
  Color bacColor;
  Color iconColor;

  MyBackButton({
    super.key,
    required this.bacColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 55,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: bacColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Image.asset(
        AppIcons.back,
        color: iconColor,
      ),
    );
  }
}
