import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:samokat/presentation/widgets/home/product_item.dart';
import 'package:samokat/presentation/widgets/home/title_and_more.dart';

import '../../../model/Product.dart';

// ignore: must_be_immutable
class ElementsOfCategory extends StatelessWidget {
  String subCategoryName;
  List<Product> products;

  ElementsOfCategory({
    required this.subCategoryName,
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndMore(
            title: subCategoryName,
            isMore: false,
          ),
          MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            itemBuilder: (context, index) {
              return ProductItem(
                height: (MediaQuery.of(context).size.width) / 2,
                width: (MediaQuery.of(context).size.width) / 2,
                product: products[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
