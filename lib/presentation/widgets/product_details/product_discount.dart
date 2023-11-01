import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';

// ignore: must_be_immutable
class ProductDiscount extends StatelessWidget {
  int discount;

  ProductDiscount({
    super.key,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      left: 15,
      child: Container(
        padding: const EdgeInsets.only(
          top: 4,
          bottom: 7,
          left: 7,
          right: 7,
        ),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.appBlack,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
        ),
        child: SizedBox(
          height: 14,
          child: Text(
            '-$discount%',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
