import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';

// ignore: must_be_immutable
class Like extends StatelessWidget {
  String icon;
  bool isLike;

  Like({
    super.key,
    required this.icon,
    required this.isLike,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.only(left: 9, right: 9, bottom: 8, top: 10),
      decoration: BoxDecoration(
        color: isLike ? AppColors.appBlack : AppColors.appGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset(
        icon,
        color: isLike ? Colors.white : Colors.grey,
      ),
    );
  }
}
