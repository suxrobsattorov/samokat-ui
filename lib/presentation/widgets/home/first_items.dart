import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:samokat/presentation/screens/menu_screen.dart';
import 'package:samokat/presentation/widgets/image_and_title.dart';
import 'package:samokat/statics/options.dart';

class FirstItems extends StatelessWidget {
  const FirstItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Options.menuList.length,
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.of(context).pushNamed(
              MenuScreen.routeName,
              arguments: Options.menuList[index],
            ),
            child: ImageAndTitle(
              image: Options.menuList[index].titleImage,
              title: Options.menuList[index].name,
              height: (MediaQuery.of(context).size.width - 20) / 3,
              width: (MediaQuery.of(context).size.width - 20) / 3,
            ),
          );
        },
      ),
    );
  }
}
