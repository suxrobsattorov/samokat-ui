import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/Texts.dart';
import 'package:samokat/presentation/widgets/home/product_search.dart';
import 'package:samokat/statics/options.dart';

import 'discounts.dart';
import 'first_items.dart';
import 'option_category.dart';
import '../list_view_horizontal.dart';

class HomeBottomSheet extends StatefulWidget {
  const HomeBottomSheet({super.key});

  @override
  State<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  final _sheet = GlobalKey();

  final _controller = DraggableScrollableController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://88227.selcdn.ru/cm-catalog-api-prod/public/08cea2784c7a8199________.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: DraggableScrollableSheet(
        key: _sheet,
        initialChildSize: 0.35,
        maxChildSize: 1,
        minChildSize: 0.35,
        expand: true,
        snap: true,
        snapSizes: const [0.35],
        controller: _controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        children: [
                          Texts.text16('Yetkazib berish', Colors.grey),
                          const SizedBox(width: 10),
                          Texts.text16('15 minut', Colors.black),
                        ],
                      ),
                    ),
                  ),
                  SliverList.list(
                    children: [
                      const ProductSearch(),
                      FirstItems(),
                      const SizedBox(height: 35),
                      ListViewHorizontal(
                        title: 'Salqin narxlar',
                        isMore: true,
                        products: Options.products,
                      ),
                      const SizedBox(height: 35),
                      Discounts(discounts: Options.discounts),
                      const SizedBox(height: 35),
                      ListViewHorizontal(
                        title: 'To\'plamlar',
                        isMore: false,
                        products: Options.products,
                      ),
                      const SizedBox(height: 35),
                      ListViewHorizontal(
                        title: 'Har qanday vaziyat uchun',
                        isMore: false,
                        products: Options.products,
                      ),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      ListViewHorizontal(
                        title: 'O\'zingizdan iltimos',
                        isMore: false,
                        products: Options.products,
                      ),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      ListViewHorizontal(
                        title: 'Tez pishiring',
                        isMore: false,
                        products: Options.products,
                      ),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      ListViewHorizontal(
                        title: 'O\'yinchoqlar va boshqalar',
                        isMore: false,
                        products: Options.products,
                      ),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 35),
                      OptionCategory(),
                      const SizedBox(height: 70),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
