import 'package:flutter/material.dart';
import 'package:samokat/model/Product.dart';
import 'package:samokat/presentation/constants/Texts.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/constants/app_icons.dart';
import 'package:samokat/presentation/widgets/liniya.dart';
import 'package:samokat/statics/options.dart';

// ignore: must_be_immutable
class ProductOrderItem extends StatefulWidget {
  Product product;

  ProductOrderItem({
    super.key,
    required this.product,
  });

  @override
  State<ProductOrderItem> createState() => _ProductOrderItemState();
}

class _ProductOrderItemState extends State<ProductOrderItem> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Liniya(),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.product.image,
                width: 100,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 140,
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Texts.text12(
                                'Колбаса варёная Мираторг докторская ',
                                AppColors.appBlack),
                          ),
                          Texts.text12('470 г', Colors.grey),
                        ],
                      ),
                      InkWell(
                        onTap: () => setState(() {
                          Options.products2.remove(widget.product);
                        }),
                        child: Image.asset(
                          AppIcons.close,
                          color: AppColors.appGrey,
                          width: 10,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: AppColors.bacColor,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => setState(() {
                                if (count > 0) count--;
                              }),
                              child: Image.asset(
                                AppIcons.minus,
                                color: AppColors.appBlack,
                                width: 18,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Texts.text16(count.toString(), AppColors.appBlack),
                            const SizedBox(width: 15),
                            InkWell(
                              onTap: () => setState(() {
                                count++;
                              }),
                              child: Image.asset(
                                AppIcons.plus2,
                                color: AppColors.appBlack,
                                width: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.product.price}'.substring(
                              0,
                              widget.product.price.toString().length - 2,
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.appGrey,
                              decorationColor: AppColors.appBlack,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Texts.text16(
                              '${widget.product.discountPrice}'.substring(
                                0,
                                widget.product.discountPrice.toString().length -
                                    2,
                              ),
                              AppColors.appBlack),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
