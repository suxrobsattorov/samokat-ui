import 'package:flutter/material.dart';
import 'package:samokat/model/recommendation.dart';
import 'package:samokat/presentation/screens/story_screen.dart';
import 'package:samokat/presentation/widgets/category_list_view_horizontal.dart';
import 'package:samokat/presentation/widgets/liniya.dart';

import '../../model/category.dart';
import '../constants/Texts.dart';
import '../constants/app_colors.dart';
import '../widgets/category/elements_of_category.dart';
import '../widgets/my_back_button.dart';
import '../widgets/search_button.dart';
import 'search_screen.dart';

class RecommendationScreen extends StatelessWidget {
  const RecommendationScreen({super.key});

  static const routeName = '/recommendation';

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final category = arguments['category'] as CategoryTwo;
    final List<CategoryThree> categoryThree = category.categoryThree;
    final recommendation = arguments['recommendation'] as Recommendation;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 270,
                  child: Image.network(
                    recommendation.bacImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 80, spreadRadius: 50,
                        // offset: Offset(0, 1), // Shadow position
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 10,
                  margin: const EdgeInsets.only(top: 260),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 30, spreadRadius: 40,
                        offset: Offset(0, -10), // Shadow position
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 15,
                  child: Texts.text20(recommendation.name, AppColors.appBlack),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: MyBackButton(
                      bacColor: Colors.grey.shade500,
                      iconColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(SearchScreen.routeName),
                    child: SearchButton(
                      bacColor: Colors.grey.shade500,
                      iconColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: MediaQuery.of(context).size.width / 2 - 25,
                  child: InkWell(
                    onTap: () => showModalBottomSheet(
                      elevation: 0,
                      backgroundColor: Colors.black,
                      barrierColor: Colors.black,
                      useSafeArea: true,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return const StoryScreen();
                      },
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.text12(
                    recommendation.description,
                    AppColors.appBlack,
                  ),
                  const Liniya(),
                ],
              ),
            ),
            CategoryListViewHorizontal(categoryThree: categoryThree),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categoryThree.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElementsOfCategory(
                    subCategoryName: categoryThree[index].categoryName,
                    products: categoryThree[index].products,
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
