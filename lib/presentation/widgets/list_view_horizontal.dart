import 'package:flutter/material.dart';
import 'package:samokat/presentation/widgets/more_container.dart';
import 'package:samokat/presentation/widgets/home/product_item.dart';
import 'package:samokat/presentation/widgets/home/title_and_more.dart';

import '../../model/Product.dart';

// ignore: must_be_immutable
class ListViewHorizontal extends StatelessWidget {
  String title;
  bool isMore;
  List<Product> products;

  ListViewHorizontal({
    required this.title,
    required this.isMore,
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = (MediaQuery.of(context).size.width) / 2.6;
    final width = (MediaQuery.of(context).size.width) / 2.6;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleAndMore(title: title, isMore: isMore),
        SizedBox(
          height: (MediaQuery.of(context).size.width / 2.6) * 1.6 + 8.1,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: products.length > 11 ? 8 : products.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    height: height,
                    width: width,
                    product: products[index],
                  );
                },
              ),
              products.length > 11
                  ? MoreContainer(
                      height: height,
                      width: width,
                      bottomPadding: 91.75,
                      images: [
                        products[8].image,
                        products[9].image,
                        products[10].image,
                        products[11].image,
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
