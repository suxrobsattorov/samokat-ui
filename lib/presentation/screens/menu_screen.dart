import 'package:flutter/material.dart';
import 'package:samokat/model/menu.dart';
import 'package:samokat/presentation/screens/search_screen.dart';
import 'package:samokat/presentation/widgets/image_and_title.dart';
import 'package:samokat/presentation/widgets/list_view_horizontal.dart';
import 'package:samokat/presentation/widgets/search_button.dart';

import '../../statics/options.dart';
import '../constants/Texts.dart';
import '../constants/app_colors.dart';
import '../widgets/my_back_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    final menu = ModalRoute.of(context)?.settings.arguments as Menu;
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
                    menu.bacImage,
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
                  child: Texts.text20(menu.name, AppColors.appBlack),
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
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 1.7,
              child: ListView.builder(
                padding: const EdgeInsets.only(right: 5, left: 15),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ImageAndTitle(
                      image:
                          'https://88227.selcdn.ru/cm-catalog-api-prod/public/08cea2784c7a8199________.jpg',
                      title: 'Title',
                      height: MediaQuery.of(context).size.width / 1.7,
                      width: MediaQuery.of(context).size.width / 2.3,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            ListViewHorizontal(
              title: 'Salqin narxlar',
              isMore: true,
              products: Options.products,
            ),
            const SizedBox(height: 40),
            ListViewHorizontal(
              title: 'Salqin narxlar',
              isMore: true,
              products: Options.products,
            ),
            const SizedBox(height: 40),
            ListViewHorizontal(
              title: 'Salqin narxlar',
              isMore: true,
              products: Options.products,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
