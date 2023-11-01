import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';

// ignore: must_be_immutable
class ProductAdd extends StatelessWidget {
  double price;
  double discountPrice;

  ProductAdd({
    super.key,
    required this.price,
    required this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      color: AppColors.appAddColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
            child: Text(
              '$price'.substring(
                0,
                price.toString().length - 2,
              ),
              style: const TextStyle(
                fontSize: 20,
                color: AppColors.appGrey,
                decorationColor: Colors.white,
                decoration: TextDecoration.lineThrough,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 20,
            child: Text(
              '$discountPrice'.substring(
                0,
                discountPrice.toString().length - 2,
              ),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Image.asset(
            AppIcons.plus,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
