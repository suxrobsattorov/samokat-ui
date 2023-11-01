import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/constants/app_icons.dart';

import '../../constants/Texts.dart';

// ignore: must_be_immutable
class InputAddressContainer extends StatelessWidget {
  String inputName;
  bool isOnTab;

  InputAddressContainer({
    required this.inputName,
    required this.isOnTab,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isOnTab
        ? Text(inputName)
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppIcons.plus,
                width: 20,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Texts.text18(inputName, AppColors.appBlack),
            ],
          );
  }
}
