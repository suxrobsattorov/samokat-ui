import 'package:flutter/material.dart';

import '../../constants/Texts.dart';
import '../../constants/app_colors.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: AppColors.appAddColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Texts.text16('Продолжить', Colors.white),
          Texts.text14('к адресу и оплате', AppColors.appGrey),
        ],
      ),
    );
  }
}
