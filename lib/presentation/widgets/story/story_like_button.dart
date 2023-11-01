import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';

// ignore: must_be_immutable
class StoryLike extends StatelessWidget {
  String icon;
  bool isLike;

  StoryLike({
    super.key,
    required this.icon,
    required this.isLike,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.only(top: 20, bottom: 17),
      decoration: BoxDecoration(
        color: isLike ? Colors.white : AppColors.appBlack,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset(
        icon,
        color: isLike ? AppColors.appBlack : Colors.white,
      ),
    );
  }
}
