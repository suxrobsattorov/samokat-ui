import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';

// ignore: must_be_immutable
class Close extends StatelessWidget {
  String icon;

  Close({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
        color: AppColors.appGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset(
        icon,
        color: Colors.white,
      ),
    );
  }
}
