import 'package:flutter/material.dart';
import 'package:samokat/model/category.dart';
import '../constants/app_colors.dart';

// ignore: must_be_immutable
class CategoryListViewHorizontal extends StatelessWidget {
  List<CategoryThree> categoryThree;

  CategoryListViewHorizontal({
    required this.categoryThree,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 40,
        margin: const EdgeInsets.all(7),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryThree.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(
                  top: 9, bottom: 3, left: 10, right: 10),
              margin: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: AppColors.appGrey,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(15),
                  right: Radius.circular(15),
                ),
              ),
              child: SizedBox(
                height: 12,
                child: Text(
                  categoryThree[index].categoryName,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
      );
  }
}
