import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/Texts.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/widgets/liniya.dart';
import 'package:samokat/presentation/widgets/search/categories_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 110,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Поиск',
                        border: InputBorder.none,
                      ),
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Texts.text16(
                      'Отмена',
                      AppColors.appAddColor,
                    ),
                  ),
                ],
              ),
            ),
            const Liniya(),
            const CategoriesList(),
          ],
        ),
      ),
    );
  }
}
