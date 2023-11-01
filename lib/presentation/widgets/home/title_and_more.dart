import 'package:flutter/material.dart';

import '../../constants/Texts.dart';
import '../../constants/app_colors.dart';

// ignore: must_be_immutable
class TitleAndMore extends StatelessWidget {
  String title;
  bool isMore;

  TitleAndMore({
    required this.title,
    required this.isMore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Texts.text20(title, Colors.black),
          const SizedBox(width: 5),
          isMore
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts.text12('Hammasi', Colors.black),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: AppColors.bacColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                        size: 13,
                      ),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
