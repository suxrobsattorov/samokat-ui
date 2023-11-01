import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class Liniya extends StatelessWidget {
  const Liniya({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.appGrey,
    );
  }
}
