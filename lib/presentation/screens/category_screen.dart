import 'package:flutter/material.dart';
import 'package:samokat/model/category.dart';
import 'package:samokat/statics/options.dart';
import 'package:samokat/presentation/widgets/category/elements_of_category.dart';
import '../constants/app_colors.dart';
import '../widgets/category_list_view_horizontal.dart';
import '../widgets/list_view_horizontal.dart';
import '../widgets/my_back_button.dart';
import '../widgets/search_button.dart';
import 'search_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as CategoryTwo;
    final List<CategoryThree> categoryThree = category.categoryThree;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: MyBackButton(
                bacColor: AppColors.bacColor,
                iconColor: AppColors.appBlack,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                  child: Text(
                    category.categoryName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Text(
                  '15 minut',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(SearchScreen.routeName),
              child: SearchButton(
                bacColor: AppColors.bacColor,
                iconColor: AppColors.appBlack,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            CategoryListViewHorizontal(categoryThree: categoryThree),
            const SizedBox(height: 10),
            ListViewHorizontal(
              title: 'Salqin narxlar',
              isMore: true,
              products: Options.products,
            ),
            const SizedBox(height: 25),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categoryThree.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: ElementsOfCategory(
                    subCategoryName: categoryThree[index].categoryName,
                    products: categoryThree[index].products,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
