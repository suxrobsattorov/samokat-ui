import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:samokat/presentation/screens/category_screen.dart';
import 'package:samokat/presentation/screens/recommendation_screen.dart';
import 'package:samokat/presentation/widgets/image_and_title.dart';
import 'package:samokat/presentation/widgets/home/title_and_more.dart';
import 'package:samokat/statics/options.dart';

class OptionCategory extends StatelessWidget {
  const OptionCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final category = Options.categoryOne;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndMore(title: category.categoryName, isMore: false),
          const SizedBox(height: 10),
          MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: category.categoryTwo.length,
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            itemBuilder: (context, index) {
              return 0 == index
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RecommendationScreen.routeName,
                          arguments: {
                            'category': category.categoryTwo[index],
                            'recommendation': Options.recommendation,
                          },
                        );
                      },
                      child: ImageAndTitle(
                        image: Options.recommendation.titleImage,
                        title: Options.recommendation.name,
                        height: ((MediaQuery.of(context).size.width - 20) / 3) *
                            1.5,
                        width: (MediaQuery.of(context).size.width - 20) / 3,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          CategoryScreen.routeName,
                          arguments: category.categoryTwo[index],
                        );
                      },
                      child: ImageAndTitle(
                        image: category.categoryTwo[index].image,
                        title: category.categoryTwo[index].categoryName,
                        height: ((MediaQuery.of(context).size.width - 20) / 3) *
                            1.5,
                        width: (MediaQuery.of(context).size.width - 20) / 3,
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
