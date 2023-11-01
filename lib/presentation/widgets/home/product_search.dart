import 'package:flutter/material.dart';

import '../../constants/Texts.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../screens/search_screen.dart';

class ProductSearch extends StatefulWidget {
  const ProductSearch({super.key});

  @override
  State<ProductSearch> createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.bacColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(SearchScreen.routeName),
            child: SizedBox(
              width: MediaQuery.of(context).size.width-130,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      AppIcons.search,
                      width: 18,
                      color: Colors.black,
                    ),
                  ),
                  Texts.text16('Qidiruv...', Colors.grey),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.appGrey,
                ),
              ),
              const SizedBox(width: 14),
              Image.asset(
                AppIcons.discount,
                width: 12,
                color: Colors.black87,
              ),
              const SizedBox(width: 8),
              Texts.text16('AKSIYA', AppColors.appBlack),
              const SizedBox(width: 3),
            ],
          ),
        ],
      ),
    );
  }
}
