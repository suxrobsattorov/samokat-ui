import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/widgets/home/discount_item.dart';
import 'package:samokat/presentation/widgets/image_and_title.dart';
import 'package:samokat/presentation/widgets/home/product_item.dart';
import 'package:samokat/presentation/widgets/home/title_and_more.dart';

import '../../../model/discount.dart';
import '../more_container.dart';

// ignore: must_be_immutable
class Discounts extends StatelessWidget {
  List<Discount> discounts;

  Discounts({
    super.key,
    required this.discounts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleAndMore(
          title: 'Chegirma',
          isMore: true,
        ),
        SizedBox(
          height: (MediaQuery.of(context).size.width / 2.6) * 1.9 + 15.85,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: discounts.length > 11 ? 8 : discounts.length,
                itemBuilder: (context, index) {
                  return DiscountItem(
                    title: discounts[index].title,
                    image: discounts[index].image,
                  );
                },
              ),
              discounts.length > 11
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: MoreContainer(
                        height:
                            (MediaQuery.of(context).size.width / 2.6) * 2 - 40,
                        width: (MediaQuery.of(context).size.width) / 2.6,
                        bottomPadding: 20,
                        images: [
                          discounts[8].image,
                          discounts[9].image,
                          discounts[10].image,
                          discounts[11].image,
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
