import 'package:flutter/material.dart';
import 'package:samokat/model/Product.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/constants/app_icons.dart';
import 'package:samokat/presentation/screens/product_details_screen.dart';

import '../../constants/Texts.dart';

// ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  double height;
  double width;
  Product product;

  ProductItem({
    required this.height,
    required this.width,
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                elevation: 0,
                backgroundColor: Colors.black,
                barrierColor: Colors.white,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const ProductDetailsScreen();
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        product.image,
                        fit: BoxFit.cover,
                        height: height,
                        width: width,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 2,
                          bottom: 5,
                          left: 5,
                          right: 5,
                        ),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30),
                          ),
                        ),
                        child: SizedBox(
                          height: 12,
                          child: Texts.text12(
                              '-${product.discount}%', Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: width,
                  height: 28,
                  child: Texts.text12(product.productName, AppColors.appBlack),
                ),
                Texts.text12(product.size, Colors.grey),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              color: AppColors.bacColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12,
                      child: Text(
                        '${product.price}'.substring(
                          0,
                          product.price.toString().length - 2,
                        ),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decorationColor: Colors.black,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                      child: Texts.text14(
                          '${product.discountPrice}'.substring(
                            0,
                            product.discountPrice.toString().length - 2,
                          ),
                          AppColors.appAddColor),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Image.asset(
                  AppIcons.plus,
                  width: 18,
                  color: AppColors.appAddColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
