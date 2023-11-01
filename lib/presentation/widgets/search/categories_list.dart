import 'package:flutter/material.dart';

import '../../../statics/options.dart';
import '../../constants/Texts.dart';
import '../../constants/app_colors.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: Options.categoryOnes.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts.text14(Options.categoryOnes[index].categoryName,
                  Colors.grey),
              const SizedBox(height: 8),
              ListView.builder(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount:
                Options.categoryOnes[index].categoryTwo.length,
                itemBuilder: (context, index2) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            Options.categoryOnes[index]
                                .categoryTwo[index2].image,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Texts.text16(
                            Options.categoryOnes[index]
                                .categoryTwo[index2].categoryName,
                            AppColors.appBlack),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),
            ],
          );
        },
      ),
    );
  }
}
